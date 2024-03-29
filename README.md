# TeacherQuery System
![jQuery Badge](https://img.shields.io/badge/jQuery-0769AD?logo=jquery&logoColor=fff&style=for-the-badge)
![Bootstrap Badge](https://img.shields.io/badge/Bootstrap-7952B3?logo=bootstrap&logoColor=fff&style=for-the-badge)
![Apache Tomcat Badge](https://img.shields.io/badge/Apache%20Tomcat-F8DC75?logo=apachetomcat&logoColor=000&style=for-the-badge)
![Microsoft SQL Server Badge](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?logo=microsoftsqlserver&logoColor=fff&style=for-the-badge)

利用 Microsoft SQL Server, Java Server Pages , Bootstrap5 , Jquery ,apache-tomcat實現一個教師資料查詢系統 <br>
主要使用 ODBC 連線<br>
## Features

- 教師資料
   新增 刪除 修改 查詢
- 專長資料
  新增 刪除 修改 查詢
- 系級名稱
  修改 查詢
  
## Demo
<a href="https://youtu.be/BjJkCcQfMJY">https://youtu.be/BjJkCcQfMJY</a></br></br>
![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/0586b302-ddfd-4233-bfe8-ebc13e596704)

## How to use
>請忽略 "網站" 資料夾內的檔案，請使用demo2壓縮檔
- 前置步驟<br>
下載 Miscrosoft SQL Server<br>
下載 SSMS<br>
下載 jdk-8u131-windows-x64.exe<br>
下載 java-ide ex: <a href="https://www.eclipse.org/downloads/">eclipse</a> (本專案使用 neon3 版本)<br>
下載 apache (本專案使用 8.5.14) 檔案位於列表中<br><br>
- eclipse 創建一個 dynamic web project ，下圖名稱為test
- 配置 apache jdk 於 eclipse
- 將 demo2\demo2\WebContent\資料庫期末\110-1_Orders 匯入專案(匯入110-1_Orders即可)
- lib與JavaResources配置參照下圖
  - lib demo2\demo2\WebContent\WEB-INF\lib (直接複製檔案即可)<br>
  ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/8f1ba456-4041-4893-b2a4-6b7cff53147d)
  - 詳情請見完整配置圖
  - JavaResources demo2\demo2\build\classes<br>
  ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/908086f6-d70b-4fec-bbb3-4d7eb619dc50)
  - 詳情請見完整配置圖
- ## 完整配置圖
![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/a13e572b-7522-4c74-8f62-a23a71d3e82d)
- 在mssql中新建一個資料庫，創建檔案位於列表中 (亦可使用掛載資料庫方式)
- 在 mssql設定管理員中 中開啟 TCP port 1443 , 並將服務重新啟動<br>
  ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/aebf14ae-b66d-4dc3-a3dd-d8c3d91fbb8a)
  ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/43f9e1c4-4325-48af-a0be-725d57e0122c)
  
- 在ssms中 新增使用者demo，密碼demo ，使用sql驗證登入，<br>
- ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/2307f0cb-4aea-4ad9-b8a3-8940a1f3d83c)
- ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/34b8e7eb-8eb5-4447-b56c-d59246967ba9)
- ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/ba8ce5bc-a6ba-4e58-a292-6c44272d686b)
- 完成


> [!NOTE]
> 無法連線問題

> Q:使用者無法登入
> ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/e9bfb730-c738-4b87-bf3a-546bc2319abe)
> A:可能未開啟sql驗證登入

> Q:路徑問題
> ![image](https://github.com/Xiang511/TeacherQuerySystem/assets/120042360/e8766a15-80bb-4361-968c-5aabf79ef9af)
> A:修改即可





...待補充


