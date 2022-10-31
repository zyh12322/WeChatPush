[📌返回首页 >>>](../../README.md)

# 使用PushDeer

运行图示：

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/server-chan3.jpg)

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/server-chan4.jpg)

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/server-chan2.jpg)

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/push-plus.png)

## Ⅰ. 注册并使用push-plus服务

- 浏览器打开并登录 [push-plus首页](https://www.pushplus.plus/login.html)

  ![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-plus.png)

  ![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-plus-2.png)

- 复制你的token保存备用

  ![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-plus-4.png)

## Ⅱ. 进行模板配置

仓库`config/template-config.cjs` 已内置两个模板，可以根据个人需求进行相应修改

> 模板中{{***.DATA}}都对应相应的数据，需要就保留，不需要就删掉

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/template-config.png)

## Ⅲ. 进行基础config配置

### 打开仓库中`config/index.cjs`的进行，进行编辑

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/how-to-use/github-into-config.png)

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/how-to-use/github-into-config-2.png)

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/how-to-use/github-into-config-3.png)

### 1. 使用push-plus模式
   ```javascript
   // 请将以下代码按照图示粘贴到对应位置
   USE_PASSAGE: 'push-plus',
   ```
![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-plus-3.png)

### 2. 你的token填到哪里?

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-deer.png)

### 3. Ⅲ. 中的模板id填到哪里?

![图片无法查看请移步顶部访问 国内备用仓库地址](../../img/message-channel/use-push-deer2.png)


**以上步骤完成后请返回首页继续进行后续操作**

[📌返回首页 >>>](../../README.md)