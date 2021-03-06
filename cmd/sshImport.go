// Copyright © 2019 NAME HERE <EMAIL ADDRESS>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package cmd

import (
	"encoding/csv"
	"github.com/dejavuzhou/felix/models"
	"github.com/fatih/color"
	"github.com/mitchellh/go-homedir"
	"io"
	"log"
	"os"
	"strconv"
	"strings"

	"github.com/spf13/cobra"
)

// sshImportCmd represents the testImport command
var sshImportCmd = &cobra.Command{
	Use:   "sshimport",
	Short: "批量导入SSH服务器",
	Long:  `usage: felix sshimport -f import.txt`,
	Run: func(cmd *cobra.Command, args []string) {
		if isFlushSsh {
			if err := models.MachineDeleteAll(); err != nil {
				log.Fatalln(err)
			}
		}

		if isExportTemplate {
			exportCsvTemplateToHomeDir()
		} else {
			importHost()
		}
	},
}
var imPassword, imFile, imUser, imKey, imAuth string
var isExportTemplate, isFlushSsh bool

func init() {
	rootCmd.AddCommand(sshImportCmd)
	sshImportCmd.Flags().StringVarP(&imFile, "file", "f", ``, "SSH服务器文本文件一行就是一个服务器")
	sshImportCmd.Flags().StringVarP(&imPassword, "password", "p", "", "默认导入密码")
	sshImportCmd.Flags().StringVarP(&imUser, "user", "u", "", "默认导入用户名")
	sshImportCmd.Flags().StringVarP(&imKey, "key", "k", "~/.ssh/id_rsa", "默认SSH Private Key")
	sshImportCmd.Flags().StringVarP(&imAuth, "auth", "", "password", "SSH验证类型 passwor key")
	sshImportCmd.Flags().BoolVarP(&isExportTemplate, "template", "t", false, "is export csv template into HOME dir")
	sshImportCmd.Flags().BoolVarP(&isFlushSsh, "flush", "F", false, "is Flush all ssh rows then import csv")
}

func importHost() {
	file, err := os.Open(imFile)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()
	csvReader := csv.NewReader(file)
	for {
		record, err := csvReader.Read()
		if err == io.EOF {
			break
		}
		if err != nil {
			log.Fatal(err)
		}
		if strings.Contains(record[0], "can be blank") {
			continue
		}
		sshUser := imUser
		sshPassword := imPassword
		if record[0] != "" {
			sshUser = record[0]
		}
		if record[1] != "" {
			sshPassword = record[1]
		}
		var sshPort uint = 22
		if i, err := strconv.ParseUint(record[4], 10, 64); err != nil && i != 0 {
			sshPort = uint(i)
		}
		if err := models.MachineAdd(record[2], record[2], record[3], sshUser, sshPassword, imKey, imAuth, sshPort); err != nil {
			color.Red("db: %s", err)
		}

	}

}

func exportCsvTemplateToHomeDir() {
	filePath, _ := homedir.Expand("~/sshImportCsvTemplate.csv")
	csvFile, err := os.Create(filePath)
	if err != nil {
		log.Fatalln(err)
	}
	defer csvFile.Close()

	csvWriter := csv.NewWriter(csvFile)
	rows := [][]string{
		{"ssh_user(optional can be blank)", "ssh_password(optional can be blank)", "ssh_name", "ssh_host", "ssh_port (optional can be blank)"},
	}
	err = csvWriter.WriteAll(rows)
	if err != nil {
		log.Fatalln(err)
	}
	color.Cyan("ssh import csv template has exported into %s", filePath)
	color.Yellow("use Excel to add ssh info into a row")
}
