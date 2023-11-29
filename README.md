## TeacherQuerySystem
College of Intelligent Science and Technology-Teacher Query System

利用 Microsoft SQL Server, jsp , Bootstrap 實現一個教師資料查詢系統<br><br>
主要使用 javaBean , ODBC 連線<br><br>
目前功能包括:
- 新增教師資料
- 刪除教師資料
- 修改教師資料
- 查詢教師資料

## How to use
>請忽略 "網站" 資料夾內的檔案，請使用demo2壓縮檔
- 前置步驟<br>
下載 Miscrosoft SQL Server<br>
下載 SSMS<br>
下載 jdk-8u131-windows-x64.exe<br>
下載 java-ide ex: <a href="https://www.eclipse.org/downloads/">eclipse</a> (本專案使用 neon3 版本)<br>
下載 apache (本專案使用 8.5.14) 檔案位於列表中<br><br>
- 配置 apache jdk 於 eclipse
- eclipse 創建一個 dynamic web project
- 將 demo2 解壓縮匯入專案
- 在mssql中新建一個資料庫，創建檔案位於列表中 (亦可使用掛載資料庫方式)
- 在 mssql管理程式 中開啟 port 1443 , 並將服務重新啟動
- 完成
