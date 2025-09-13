#!/bin/bash

# 批量执行git操作的交互式脚本

# 定义颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
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

# 存储选中的项目
declare -a selected_projects=()

# 清屏函数
clear_screen() {
    clear
}

# 显示标题
show_header() {
    echo -e "${BLUE}╔══════════════════════════════════╗${NC}"
    echo -e "${BLUE}║     Git 批量操作管理脚本 v2.0    ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════╝${NC}"
    echo ""
}

# 显示操作菜单
show_operation_menu() {
    show_header
    echo -e "${YELLOW}请选择要执行的操作：${NC}"
    echo ""
    echo -e "${CYAN}1)${NC} Push  ${GREEN}(推送到远程仓库)${NC}"
    echo -e "${CYAN}2)${NC} Pull  ${GREEN}(从远程仓库拉取)${NC}"
    echo -e "${CYAN}3)${NC} Clone ${GREEN}(克隆远程仓库)${NC}"
    echo -e "${CYAN}4)${NC} 退出"
    echo ""
    read -p "$(echo -e ${MAGENTA}"请输入选项 [1-4]: "${NC})" choice
    
    case $choice in
        1) operation="push" ;;
        2) operation="pull" ;;
        3) operation="clone" ;;
        4)
            echo -e "\n${GREEN}感谢使用，再见！${NC}"
            exit 0
            ;;
        *)
            echo -e "\n${RED}无效的选项！${NC}"
            sleep 2
            show_operation_menu
            ;;
    esac
}

# 显示项目选择菜单
show_project_menu() {
    clear_screen
    show_header
    echo -e "${YELLOW}选择要执行 ${operation} 操作的项目：${NC}"
    echo ""
    echo -e "${CYAN}0)${NC} ${GREEN}[全选所有项目]${NC}"
    echo ""
    
    # 显示项目列表
    counter=1
    for project in "${project_order[@]}"; do
        # 检查项目目录是否存在（对于push和pull）
        if [[ "$operation" != "clone" ]] && [[ ! -d "$BASE_PATH/$project" ]]; then
            echo -e "${CYAN}$counter)${NC} $project ${RED}(目录不存在)${NC}"
        else
            echo -e "${CYAN}$counter)${NC} $project"
        fi
        ((counter++))
    done
    
    echo ""
    echo -e "${MAGENTA}说明：${NC}"
    echo -e "  - 输入 ${CYAN}0${NC} 选择所有项目"
    echo -e "  - 输入单个数字选择一个项目 (如: ${CYAN}5${NC})"
    echo -e "  - 输入多个数字选择多个项目，用空格分隔 (如: ${CYAN}1 3 5 7${NC})"
    echo -e "  - 输入数字范围选择连续项目 (如: ${CYAN}1-5${NC})"
    echo -e "  - 混合使用 (如: ${CYAN}1-3 5 7-9${NC})"
    echo -e "  - 输入 ${CYAN}q${NC} 返回上级菜单"
    echo ""
    
    read -p "$(echo -e ${MAGENTA}"请输入您的选择: "${NC})" selection
}

# 解析用户选择
parse_selection() {
    selected_projects=()
    
    # 如果选择退出
    if [[ "$selection" == "q" || "$selection" == "Q" ]]; then
        return 1
    fi
    
    # 如果选择全部
    if [[ "$selection" == "0" ]]; then
        selected_projects=("${project_order[@]}")
        return 0
    fi
    
    # 解析用户输入
    for item in $selection; do
        # 检查是否是范围 (如 1-5)
        if [[ $item =~ ^([0-9]+)-([0-9]+)$ ]]; then
            start=${BASH_REMATCH[1]}
            end=${BASH_REMATCH[2]}
            
            # 验证范围
            if [[ $start -lt 1 || $end -gt ${#project_order[@]} || $start -gt $end ]]; then
                echo -e "${RED}无效的范围: $item${NC}"
                sleep 2
                return 2
            fi
            
            # 添加范围内的项目
            for ((i=$start-1; i<$end; i++)); do
                project="${project_order[$i]}"
                # 避免重复添加
                if [[ ! " ${selected_projects[@]} " =~ " ${project} " ]]; then
                    selected_projects+=("$project")
                fi
            done
            
        # 检查是否是单个数字
        elif [[ $item =~ ^[0-9]+$ ]]; then
            if [[ $item -lt 1 || $item -gt ${#project_order[@]} ]]; then
                echo -e "${RED}无效的项目编号: $item${NC}"
                sleep 2
                return 2
            fi
            
            project="${project_order[$item-1]}"
            # 避免重复添加
            if [[ ! " ${selected_projects[@]} " =~ " ${project} " ]]; then
                selected_projects+=("$project")
            fi
            
        else
            echo -e "${RED}无效的输入: $item${NC}"
            sleep 2
            return 2
        fi
    done
    
    # 如果没有选择任何项目
    if [[ ${#selected_projects[@]} -eq 0 ]]; then
        echo -e "${RED}没有选择任何项目！${NC}"
        sleep 2
        return 2
    fi
    
    return 0
}

# 显示确认信息
show_confirmation() {
    clear_screen
    show_header
    echo -e "${GREEN}将要执行 ${operation} 操作的项目：${NC}"
    echo ""
    
    counter=1
    for project in "${selected_projects[@]}"; do
        echo -e "${CYAN}$counter.${NC} $project"
        ((counter++))
    done
    
    echo ""
    echo -e "${YELLOW}共 ${#selected_projects[@]} 个项目${NC}"
    echo ""
    
    read -p "$(echo -e ${MAGENTA}"确认执行以上项目的 ${operation} 操作吗？[y/n]: "${NC})" confirm
    
    if [[ $confirm != "y" && $confirm != "Y" ]]; then
        echo -e "\n${RED}操作已取消${NC}"
        sleep 2
        return 1
    fi
    
    return 0
}

# 执行git操作
execute_operations() {
    clear_screen
    show_header
    echo -e "${BLUE}开始执行批量 ${operation} 操作...${NC}"
    echo -e "${BLUE}════════════════════════════════════${NC}"
    
    # 成功和失败计数
    success_count=0
    fail_count=0
    failed_projects=()
    
    # 序贯执行每个项目的命令
    for project in "${selected_projects[@]}"; do
        project_path="${BASE_PATH}/${project}"
        
        echo ""
        echo -e "${YELLOW}[$((success_count + fail_count + 1))/${#selected_projects[@]}] 正在处理: ${project}${NC}"
        echo "────────────────────────────────────"
        
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
                
                # 如果目录已存在，询问是否覆盖
                if [ -d "$project" ]; then
                    echo -e "${YELLOW}警告: 目录已存在 - $project${NC}"
                    read -p "是否删除并重新克隆？[y/n]: " overwrite
                    if [[ $overwrite == "y" || $overwrite == "Y" ]]; then
                        echo "删除已存在的目录: $project"
                        sudo rm -rf "./$project"
                    else
                        echo -e "${YELLOW}跳过 ${project}${NC}"
                        continue
                    fi
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
        
        echo "────────────────────────────────────"
    done
    
    # 显示执行结果统计
    echo ""
    echo -e "${BLUE}════════════════════════════════════${NC}"
    echo -e "${BLUE}         执行结果统计${NC}"
    echo -e "${BLUE}════════════════════════════════════${NC}"
    echo -e "${GREEN}✓ 成功: ${success_count} 个项目${NC}"
    echo -e "${RED}✗ 失败: ${fail_count} 个项目${NC}"
    
    # 如果有失败的项目，显示失败列表
    if [ ${#failed_projects[@]} -gt 0 ]; then
        echo ""
        echo -e "${RED}失败的项目列表：${NC}"
        for failed in "${failed_projects[@]}"; do
            echo -e "${RED}  - $failed${NC}"
        done
    fi
    
    echo ""
    echo -e "${GREEN}批量操作完成！${NC}"
    echo ""
    echo -e "${MAGENTA}按回车键继续...${NC}"
    read -n 1
}

# 主程序
main() {
    while true; do
        clear_screen
        
        # 选择操作类型
        show_operation_menu
        
        while true; do
            # 选择项目
            show_project_menu
            
            # 解析选择
            parse_selection
            result=$?
            
            if [[ $result -eq 1 ]]; then
                # 用户选择返回
                break
            elif [[ $result -eq 2 ]]; then
                # 选择无效，重新选择
                continue
            fi
            
            # 显示确认
            if show_confirmation; then
                # 执行操作
                execute_operations
                break
            fi
        done
    done
}

# 运行主程序
main