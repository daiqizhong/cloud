###WebService 客户端开发###


1. 下载cxf 
	>
[http://mirrors.cnnic.cn/apache/cxf/3.1.6/apache-cxf-3.1.6.zip](http://mirrors.cnnic.cn/apache/cxf/3.1.6/apache-cxf-3.1.6.zip)

2. 配置环境变量，此处忽略
3. 使用wsdl2java 生成java代码

	>
	C:\Users\Administrator>wsdl2java -d D:\\src -client http://10.100.140.144:8080/services/CeFinalPaymentWS?wsdl

4. 把生成的代码导入工程
5. 创建客户端实现