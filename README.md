# WTS
#### 当前版本v0.9.0，更新内容：

- 功能：问答题增加文本编辑器样式
- 功能：题干和选项描述字段可为空
- 功能：人员批量设置岗位
- BUG：人员excel导入时简化导入模板

#### 当前版本v0.8.0，更新内容：

- 功能：超文本编辑器增加latex公式编辑器
- 功能：交卷操作性能优化
- 功能：增加excel的成绩导出功能
- 功能：优化手工组卷时排序功能
- 功能：阅卷时的人员列表支持按照状态筛选
- 功能：增加配置项可禁止用户多地同时登陆
- 功能：增加访问限流，和ip黑名单功能
- BUG：材料备注解析没有换行的问题
- BUG：移动端练习题报错
- BUG：答题室无故显示答案的问题 

#### 当前版本v0.7.0，更新内容：

- 功能：答卷在答题室中以别名方式展示
- 功能：练习题配置项从答卷中移动到答题室中
- 功能：与WCP商业版集成用户系统
- 功能：前台可通过答题室ID直接进入答题室
- BUG：MP3在chrome不能播放的问题
- BUG：判卷时试题解析不显示的问题
- BUG：用户题库权限不能正常展示的问题
- BUG：其他一些bug

#### 当前版本v0.6.0，更新内容：

- 功能：将答卷导出为Word试卷（含答案）
- 功能：支持随机答卷，当人员进入答题室时随机抽取一份答卷供用户答题
- 功能：支持题目随机排序，答题时每个大题下的所有题目随机排序
- 功能：支持选项随机排序，答题时选择题的选项随机排列
- 功能：增加管理员独立的成绩查询界面
- 功能：增加前台用户历史成绩查询界面
- 功能：支持自动批量创建随机题答卷（可定义和重复使用规则）
- BUG：修复引用材料中多媒体播放问题


#### 当前版本V0.5.0，更新内容：

- 业务分类删除时报错问题
- 题库分类删除时报错问题
- 考场删除报错问题
- 题库管理中增加题型查询条件
- 考试答卷时屏蔽鼠标右键和选择拷贝功能
- 再判卷时，判卷人员可以实时查看题解析等题信息


![输入图片说明](https://images.gitee.com/uploads/images/2020/0227/191046_6a25de34_24089.png "wts移动端展示4.png")


#### 介绍
- 这里是列表文本本系统为在线答题系统，支持在线考试、在线练习等功能（PC端/移动端）... 
-  **支持题型** ：单选题、多选题、填空题、问答题、判断题、附件题、材料题、视频题、音频题
-  **组卷方式** ：手工组卷、随机抽题组卷
-  **支持答题类型** ：手工配置 试卷答题、随机抽题练习
-  **社交功能** ：试题收藏、试题评论、试题解析、试题点赞
-  **权限控制** ：题库权限、考场权限

#### 软件架构
- jdk7
- maven
- spring4
- spring-mvc4
- hibernate4
- bootstrap
- tomcat7
- mysql

#### 演示环境
> ## **[点击访问WTS演示环境](https://demo.wcpdoc.com/wts)**

#### 代码安装说明
1. maven部署源码（**主模块：WTS/src/wts-web** ）编译顺序：wts-core > wts-parameter > wts-report > wts-authority > wts-quartz > wts-doc > wts-exam > wts-tag > wts-web
2. 创建数据库，数据库脚本在 WTS/resource/db-sql目录下
3. 修改数据库配置文件 WTS/src/wts-web/src/main/resources/jdbc.properties
4. 修改附件存储地址 WTS/src/wts-web/src/main/resources/WcpWebConfig.xml (第102行)
5. 项目编译后可直接部署于tomcat7，mysql5.x中运行，支持jdk7/jdk8，如要使用tomcat8及以上版本可能会有报错，请自行修正（所以建议第一次运行在tomcat7中）

#### 注意事项
1. 建议tomcat7，tomcat8或以上版本可能会有报错，根据错误信息自行百度和修改，并不复杂
2. 目前因为数据库方言的使用，只支持mysql，如果要切换数据库系统会有一些工作量，mysql要配置为大小写不敏感（linux环境下特别注意myslq默认大小写敏感）
3. 请使用utf8字符集

#### wts知识库，安装包下载

1.  [wts知识库访问地址](http://www.wcpdoc.com/webspecial/home/Pub2c909b2b6739306301678806130d48fe.html)
2.  [wts安装包下载地址](http://www.wcpdoc.com/webdoc/view/Pub2c909b2b6fbdee960170338a8220471d.html)

#### 使用说明

1.  [用户手册下载地址](http://www.wcpdoc.com/webdoc/view/Pub2c909b2b6fbdee960170394c7fa1517a.html)

#### 界面截图

![系统首页](https://images.gitee.com/uploads/images/2020/0216/113146_ff9fb0d9_24089.jpeg "系统首页.jpg")


![考场答卷模式](https://images.gitee.com/uploads/images/2020/0216/113334_fb9136e3_24089.png "考场答卷模式.png")


![练习题模式](https://images.gitee.com/uploads/images/2020/0216/113352_ad18a676_24089.png "练习题模式.png")


![题型展示](https://images.gitee.com/uploads/images/2020/0216/151033_e21c1913_24089.png "火狐截图_2020-02-16T07-09-55.943Z.png")

#### 推荐软件
> PLOGS是我们的自用软件，同时可下载供大家使用，通过完成日程任务和写日报的形式记录项目信息和资料，可以方便的查询项目过程信息弥补某些传统项目管理软件使用成本高和丢失项目细节的缺陷
1.  [WCP知识管理系统-开源版](https://gitee.com/macplus/WCP)
2.  [PLOGS项目日报管理系统](http://www.wcpdoc.com/webspecial/home/Pub2c909b2b6eb4fe9e016f9495d1fb5ad7.html)


### 开源项目推荐
	
> WCP:知识管理系统 [https://gitee.com/macplus/WCP](https://gitee.com/macplus/WCP)

> WDA:文件转换组件（附件在线预览）[https://gitee.com/macplus/WDA](https://gitee.com/macplus/WDA)

> WTS:在线答题系统 [https://gitee.com/macplus/WTS](https://gitee.com/macplus/WTS)