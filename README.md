# Spring Boot 物流管理系统

## 项目简介

这是一个基于Spring Boot 2.2.2开发的物流管理系统，主要用于物流公司的日常运营管理，包括寄件订单管理、车辆信息管理、监控信息管理、物流进度跟踪等功能。系统采用前后端分离架构，提供完整的物流业务解决方案。

## 技术栈

### 后端技术
- **Spring Boot 2.2.2** - 主框架
- **MyBatis Plus 2.3** - ORM框架
- **MySQL** - 数据库
- **Apache Shiro 1.3.2** - 安全框架
- **FastJSON 1.2.8** - JSON处理
- **Hutool 4.0.12** - 工具类库
- **Apache POI 3.11** - Excel处理
- **百度AI SDK 4.4.1** - 人工智能服务

### 开发环境
- **JDK 1.8**
- **Maven 3.x**
- **MySQL 5.7+**

## 主要功能模块

### 1. 用户管理
- 用户注册、登录、个人信息管理
- 用户权限控制
- 头像上传功能

### 2. 物流公司管理
- 物流公司信息维护
- 收费标准设置
- 网点信息管理

### 3. 寄件订单管理
- 寄件订单创建
- 订单状态跟踪
- 上门取货服务
- 订单审核流程

### 4. 物流进度管理
- 实时物流状态更新
- 运输进度跟踪
- 运费计算
- 支付状态管理

### 5. 车辆信息管理
- 车辆基本信息维护
- 司机信息管理
- 车辆类型分类

### 6. 监控系统
- 监控点位管理
- 视频监控功能
- 监控数据记录

### 7. 评价系统
- 服务评价功能
- 评价记录管理
- 评价统计分析

### 8. 退货管理
- 退货申请处理
- 退货流程跟踪
- 退货记录管理

### 9. 公告管理
- 系统公告发布
- 公告分类管理
- 公告图片上传

## 数据库设计

系统包含以下主要数据表：

- `yonghu` - 用户信息表
- `wuliugongsi` - 物流公司表
- `jijiandingdan` - 寄件订单表
- `jijianjindu` - 寄件进度表
- `cheliangxinxi` - 车辆信息表
- `jiankongxinxi` - 监控信息表
- `pingjiajilu` - 评价记录表
- `tuihuojilu` - 退货记录表
- `gonggaoxinxi` - 公告信息表
- `config` - 系统配置表
- `users` - 管理员表

## 快速开始

### 1. 环境准备

确保您的开发环境已安装：
- JDK 1.8+
- Maven 3.x
- MySQL 5.7+

### 2. 数据库配置

1. 创建数据库：
```sql
CREATE DATABASE springboot91u00 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

2. 导入数据库脚本：
```bash
mysql -u root -p springboot91u00 < db/springboot91u00.sql
```

3. 修改数据库连接配置（`src/main/resources/application.yml`）：
```yaml
spring:
  datasource:
    url: jdbc:mysql://127.0.0.1:3306/springboot91u00?useUnicode=true&characterEncoding=utf-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8
    username: your_username
    password: your_password
```

### 3. 运行项目

1. 使用Maven编译项目：
```bash
mvn clean compile
```

2. 启动项目：
```bash
mvn spring-boot:run
```

或者运行主类：
```bash
java -jar target/springboot91u00-0.0.1-SNAPSHOT.jar
```

3. 访问系统：
- 系统地址：http://localhost:8080/springboot91u00
- 管理员账号：admin / admin

## 项目结构

```
springboot91u00/
├── src/main/java/com/
│   ├── SpringbootSchemaApplication.java    # 启动类
│   ├── annotation/                         # 自定义注解
│   ├── config/                            # 配置类
│   ├── controller/                        # 控制器层
│   ├── dao/                              # 数据访问层
│   ├── entity/                           # 实体类
│   ├── interceptor/                      # 拦截器
│   ├── service/                          # 服务层
│   └── utils/                            # 工具类
├── src/main/resources/
│   ├── mapper/                           # MyBatis映射文件
│   ├── static/                           # 静态资源
│   └── application.yml                   # 配置文件
├── db/
│   └── springboot91u00.sql              # 数据库脚本
└── pom.xml                               # Maven配置
```

## 系统特色

1. **完整的物流业务流程**：覆盖从下单到配送完成的全流程管理
2. **实时状态跟踪**：支持订单状态实时更新和查询
3. **多角色权限管理**：支持用户、物流公司、管理员等多种角色
4. **智能监控系统**：集成视频监控和位置跟踪功能
5. **移动端适配**：支持移动设备访问和操作
6. **数据统计分析**：提供丰富的数据报表和分析功能

## 开发说明

### API接口

系统提供RESTful API接口，主要包括：

- `/api/yonghu/**` - 用户相关接口
- `/api/wuliugongsi/**` - 物流公司接口
- `/api/jijiandingdan/**` - 寄件订单接口
- `/api/jijianjindu/**` - 物流进度接口
- `/api/cheliangxinxi/**` - 车辆信息接口
- `/api/jiankongxinxi/**` - 监控信息接口

### 权限控制

系统使用Apache Shiro进行权限控制：
- `@LoginUser` - 需要登录访问
- `@IgnoreAuth` - 忽略权限验证
- `@APPLoginUser` - APP端登录验证

## 部署说明

### 开发环境部署

1. 克隆项目到本地
2. 导入IDE（推荐IntelliJ IDEA）
3. 配置数据库连接
4. 运行SpringbootSchemaApplication主类

### 生产环境部署

1. 打包项目：
```bash
mvn clean package
```

2. 部署war包到Tomcat服务器，或直接运行jar包：
```bash
java -jar springboot91u00-0.0.1-SNAPSHOT.jar
```

## 注意事项

1. 确保MySQL数据库版本为5.7+
2. 项目默认端口为8080，可在application.yml中修改
3. 文件上传路径需要确保有写入权限
4. 生产环境请修改默认的数据库密码
5. 建议使用HTTPS协议保证数据传输安全

## 联系方式

如有问题或建议，请通过以下方式联系：

- 项目地址：https://github.com/tommya27/Logistics-and-transportation-system/new/master
- 技术支持：3041826121@qq.com

## 许可证

本项目采用MIT许可证，详情请参阅LICENSE文件。

---

**注意**：本系统仅供学习和研究使用，商业使用请确保遵守相关法律法规。
