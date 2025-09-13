#!/bin/bash

# 批量执行git操作的交互式脚本

# 定义颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 基础项目路径
BASE_PATH="/home/lirongyao0916/Projects"

# 定义项目列表
declare -a project_order=(
    "Py1_project"
    "Py2_project"
    "Php1_project"
    "Lx1_project"
    "C1_Project"
    "lryper.com"
    "test.com"
    "webconf"
    "cs.com"
    "lryblog.com"
    "pytool"
    "qd.com"
    "source"
    "temp.com"
    "progress"
)

# 定义项目的git仓库地址
declare -A git_repos=(
    ["Py1_project"]="git@github.com:lirongyaoper/Py1_project.git"
    ["Py2_project"]="git@github.com:lirongyaoper/Py2_project.git"
    ["Php1_project"]="git@github.com:lirongyaoper/Php1_project.git"
    ["Lx1_project"]="git@github.com:lirongyaoper/Lx1_project.git"
    ["C1_Project"]="git@github.com:lirongyaoper/C1_Project.git"
    ["lryper.com"]="git@github.com:lirongyaoper/lryper.com.git"
    ["test.com"]="git@github.com:lirongyaoper/test.com.git"
    ["webconf"]="git@github.com:lirongyaoper/webconf.git"
    ["cs.com"]="git@github.com:lirongyaoper/cs.com.git"
    ["lryblog.com"]="git@github.com:lirongyaoper/lryblog.com.git"
    ["pytool"]="git@github.com:lirongyaoper/pytool.git"
    ["qd.com"]="git@github.com:lirongyaoper/qd.com.git"
    ["source"]="git@github.com:lirongyaoper/source.git"
    ["temp.com"]="git@github.com:lirongyaoper/temp.com.git"
    ["progress"]="git@github.com:lirongyaoper/progress.git"
)

# 显示标题
echo -e "${BLUE}==================================${NC}"
echo -e "${BLUE}     Git 批量操作管理脚本${NC}"
echo -e "${BLUE}==================================${NC}"
echo ""

# 选择操作类型
echo -e "${YELLOW}请选择要执行的操作：${NC}"
echo "1) Push (推送到远程仓库)"
echo "2) Pull (从远程仓库拉取)"
echo "3) Clone (克隆远程仓库)"
echo "4) 退出"
echo ""

read -p "请输入选项 (1-4): " choice

case $choice in
    1)
        operation="push"
        command_prefix="gith"
        ;;
    2)
        operation="pull"
        command_prefix="gitl"
        ;;
    3)
        operation="clone"
        command_prefix="gitc"
        ;;
    4)
        echo -e "${GREEN}退出程序${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}无效的选项！${NC}"
        exit 1
        ;;
esac

# 显示将要执行的操作
echo ""
echo -e "${GREEN}将要执行 ${operation} 操作...${NC}"
echo -e "${YELLOW}以下项目将被处理：${NC}"
echo ""

# 显示项目列表
counter=1
for project in "${project_order[@]}"; do
    echo "$counter. $project"
    ((counter++))
done

echo ""
read -p "确认执行以上所有项目的 ${operation} 操作吗？(y/n): " confirm

if [[ $confirm != "y" && $confirm != "Y" ]]; then
    echo -e "${RED}操作已取消${NC}"
    exit 0
fi

# 执行操作
echo ""
echo -e "${BLUE}开始执行批量 ${operation} 操作...${NC}"
echo -e "${BLUE}==================================${NC}"

# 成功和失败计数
success_count=0
fail_count=0
failed_projects=()

# 序贯执行每个项目的命令
for project in "${project_order[@]}"; do
    project_path="${BASE_PATH}/${project}"
    
    echo ""
    echo -e "${YELLOW}正在处理: ${project}${NC}"
    echo "----------------------------------------"
    
    # 根据操作类型执行相应的命令
    case $operation in
        "push")
            if [ -d "$project_path" ]; then
                echo "进入目录: $project_path"
                cd "$project_path"
                
                echo "执行: git add ."
                git add .
                
                commit_msg="update data at $(date +%Y%m%d%H%M%S)"
                echo "执行: git commit -m \"$commit_msg\""
                git commit -m "$commit_msg"
                
                echo "执行: git push"
                if git push; then
                    echo -e "${GREEN}✓ ${project} push 成功${NC}"
                    ((success_count++))
                else
                    echo -e "${RED}✗ ${project} push 失败${NC}"
                    ((fail_count++))
                    failed_projects+=("$project")
                fi
            else
                echo -e "${RED}✗ 目录不存在: $project_path${NC}"
                ((fail_count++))
                failed_projects+=("$project")
            fi
            ;;
            
        "pull")
            if [ -d "$project_path" ]; then
                echo "进入目录: $project_path"
                cd "$project_path"
                
                echo "执行: git pull"
                if git pull; then
                    echo -e "${GREEN}✓ ${project} pull 成功${NC}"
                    ((success_count++))
                else
                    echo -e "${RED}✗ ${project} pull 失败${NC}"
                    ((fail_count++))
                    failed_projects+=("$project")
                fi
            else
                echo -e "${RED}✗ 目录不存在: $project_path${NC}"
                ((fail_count++))
                failed_projects+=("$project")
            fi
            ;;
            
        "clone")
            echo "进入目录: $BASE_PATH"
            cd "$BASE_PATH"
            
            # 如果目录已存在，先删除
            if [ -d "$project" ]; then
                echo "删除已存在的目录: $project"
                sudo rm -rf "./$project"
            fi
            
            repo_url="${git_repos[$project]}"
            echo "执行: git clone $repo_url"
            if git clone "$repo_url"; then
                echo -e "${GREEN}✓ ${project} clone 成功${NC}"
                ((success_count++))
            else
                echo -e "${RED}✗ ${project} clone 失败${NC}"
                ((fail_count++))
                failed_projects+=("$project")
            fi
            ;;
    esac
    
    # 等待命令完全执行完毕
    wait
    
    echo "----------------------------------------"
done

# 显示执行结果统计
echo ""
echo -e "${BLUE}==================================${NC}"
echo -e "${BLUE}     执行结果统计${NC}"
echo -e "${BLUE}==================================${NC}"
echo -e "${GREEN}成功: ${success_count} 个项目${NC}"
echo -e "${RED}失败: ${fail_count} 个项目${NC}"

# 如果有失败的项目，显示失败列表
if [ ${#failed_projects[@]} -gt 0 ]; then
    echo ""
    echo -e "${RED}失败的项目列表：${NC}"
    for failed in "${failed_projects[@]}"; do
        echo -e "${RED}- $failed${NC}"
    done
fi

echo ""
echo -e "${GREEN}批量操作完成！${NC}"
