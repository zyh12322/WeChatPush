#!/bin/sh

green() {
	echo "\033[32m\033[01m$1\033[0m"
}
red() {
	echo "\033[31m\033[01m$1\033[0m"
}
yellow() {
	echo "\033[33m\033[01m$1\033[0m"
}

function GitHubBoxs() {
	echo
	yellow "============================="
	echo "                             "
	yellow "         GitHubBoxs          "
	echo "                             "
	yellow "============================="
	echo "              "
	yellow "1. 無效文件刪除 "
	yellow "2. 初始化此倉庫 "
	yellow "3. 修補倉庫提交 "
	yellow "4. 推送倉庫更新 "
	yellow "0. 退出當前腳本 "
	echo "              "
	read -p "請輸入選項:" NumberInput
	case "$NumberInput" in
	1) Delete ;;
	2) Clear ;;
	3) Renew ;;
	4) Upload ;;
	0) reset ;;
	*)
		red "Invalid input"
		GitHubBoxs
		;;

	esac
}

function Delete() {
	echo
	#删除文件
	cd ~
	find ./ -name ".DS_Store" -depth -exec rm -rfv {} \;
	#find ./ -name "._*" -depth -exec rm -rfv {} \;
	#find ./ -name ".localized" -depth -exec rm -rfv {} \;
	#find ./ -name ".Trashes" -depth -exec rm -rfv {} \;
	#find ./ -name "wget*" -depth -exec rm -rfv {} \;
	cd Documents/WeChatPush
	echo
	GitHubBoxs
}

function Clear() {
	echo
	rm -rfv .git
	git init
	git remote add origin git@github.com:Jehu-Joya/WeChatPush.git
	git add .
	git commit -m "初始化倉庫"
	git branch -m main
	git push origin main -f
	sleep 3
	git checkout --orphan new_branch
	git commit -m "初始化倉庫"
	git branch -D main
	git branch -m main
	git push origin main -f
	echo
	GitHubBoxs
}

function Renew() {
	echo
	git add .
	git commit --amend --no-edit --date=now --reset-author
	git push origin main -f
	echo
	GitHubBoxs
}

function Upload() {
	echo
	status_log=$(git status -sb)
	# 这里使用的是 main 分支，根据需求自行修改
	if [ "$status_log" == "## main...main/main" ]; then
		echo -e "\033[42;30m nothing to commit, working tree clean \033[0m"
	else
		git status -s
		git pull origin main
		git add .
		git commit -m "$(date '+%Y.%m.%d %H:%M:%S') 更新倉庫"
		git push origin main -f
	fi
	echo
	GitHubBoxs
}

GitHubBoxs
