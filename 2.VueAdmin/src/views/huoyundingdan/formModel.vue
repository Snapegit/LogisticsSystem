<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="货物名称" prop="huowumingcheng">
							<el-input class="list_inp" v-model="form.huowumingcheng" placeholder="货物名称"
								 type="text" 								:readonly="!isAdd||disabledForm.huowumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="货物类型" prop="huowuleixing">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.huowuleixing?true:false"
								v-model="form.huowuleixing" 
								placeholder="请选择货物类型"
								>
								<el-option v-for="(item,index) in huowuleixingLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="图片" prop="tupian">
							<uploads
								:disabled="!isAdd||disabledForm.tupian?true:false"
								action="file/upload" 
								tip="请上传图片" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.tupian?form.tupian:''" 
								@change="tupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="起始点" prop="qishidian">
							<el-input class="list_inp" v-model="form.qishidian" placeholder="起始点"
								 type="text" 								:readonly="!isAdd||disabledForm.qishidian?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="目的地" prop="mudedi">
							<el-input class="list_inp" v-model="form.mudedi" placeholder="目的地"
								 type="text" 								:readonly="!isAdd||disabledForm.mudedi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="货物数量" prop="huowushuliang">
							<el-input class="list_inp" v-model.number="form.huowushuliang" placeholder="货物数量"
								 type="text" 								:readonly="!isAdd||disabledForm.huowushuliang?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="货物重量" prop="huowuzhongliang">
							<el-input class="list_inp" v-model.number="form.huowuzhongliang" placeholder="货物重量"
								 type="number" 								:readonly="!isAdd||disabledForm.huowuzhongliang?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="货物价格" prop="huowujiage">
							<el-input class="list_inp" v-model.number="form.huowujiage" placeholder="货物价格"
								 type="number" 								:readonly="!isAdd||disabledForm.huowujiage?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="备注" prop="beizhu">
							<el-input class="list_inp" v-model="form.beizhu" placeholder="备注"
								 type="text" 								:readonly="!isAdd||disabledForm.beizhu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="发货人" prop="fahuoren">
							<el-input class="list_inp" v-model="form.fahuoren" placeholder="发货人"
								 type="text" 								:readonly="!isAdd||disabledForm.fahuoren?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="发货人姓名" prop="fahuorenxingming">
							<el-input class="list_inp" v-model="form.fahuorenxingming" placeholder="发货人姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.fahuorenxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="客户账号" prop="kehuzhanghao">
							<el-input class="list_inp" v-model="form.kehuzhanghao" placeholder="客户账号"
								 type="text" 								:readonly="!isAdd||disabledForm.kehuzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="客户姓名" prop="kehuxingming">
							<el-input class="list_inp" v-model="form.kehuxingming" placeholder="客户姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.kehuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="下单时间" prop="xiadanshijian">
							<el-date-picker
								class="list_date"
								v-model="form.xiadanshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.xiadanshijian?true:false"
								placeholder="请选择下单时间" />
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'huoyundingdan'
	const formName = '货运订单'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		huowumingcheng : false,
		huowuleixing : false,
		tupian : false,
		qishidian : false,
		mudedi : false,
		huowushuliang : false,
		huowuzhongliang : false,
		huowujiage : false,
		beizhu : false,
		fahuoren : false,
		fahuorenxingming : false,
		kehuzhanghao : false,
		kehuxingming : false,
		xiadanshijian : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		huowumingcheng: [
		],
		huowuleixing: [
		],
		tupian: [
		],
		qishidian: [
		],
		mudedi: [
		],
		huowushuliang: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		huowuzhongliang: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		huowujiage: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		beizhu: [
		],
		fahuoren: [
		],
		fahuorenxingming: [
		],
		kehuzhanghao: [
		],
		kehuxingming: [
		],
		xiadanshijian: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//货物类型列表
	const huowuleixingLists = ref([])
	//图片上传回调
	const tupianUploadSuccess=(e)=>{
		form.value.tupian = e
	}
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			huowumingcheng: '',
			huowuleixing: '',
			tupian: '',
			qishidian: '',
			mudedi: '',
			huowushuliang: '',
			huowuzhongliang: '',
			huowujiage: '',
			beizhu: '',
			fahuoren: '',
			fahuorenxingming: '',
			kehuzhanghao: '',
			kehuxingming: '',
			xiadanshijian: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.xiadanshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}else if(formType == 'logistics'){
			isAdd.value = false
			formTitle.value = '修改物流信息'
			getInfo()
		}else if(formType == 'reply'){
			type.value = formType
			isAdd.value = true
			disabledForm.value.cpicture = true
			disabledForm.value.content = true
			formTitle.value = '回复'
			getInfo()
		}else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='huowumingcheng'){
					form.value.huowumingcheng = row[x];
					disabledForm.value.huowumingcheng = true;
					continue;
				}
				if(x=='huowuleixing'){
					form.value.huowuleixing = row[x];
					disabledForm.value.huowuleixing = true;
					continue;
				}
				if(x=='tupian'){
					form.value.tupian = row[x];
					disabledForm.value.tupian = true;
					continue;
				}
				if(x=='qishidian'){
					form.value.qishidian = row[x];
					disabledForm.value.qishidian = true;
					continue;
				}
				if(x=='mudedi'){
					form.value.mudedi = row[x];
					disabledForm.value.mudedi = true;
					continue;
				}
				if(x=='huowushuliang'){
					form.value.huowushuliang = row[x];
					disabledForm.value.huowushuliang = true;
					continue;
				}
				if(x=='huowuzhongliang'){
					form.value.huowuzhongliang = row[x];
					disabledForm.value.huowuzhongliang = true;
					continue;
				}
				if(x=='huowujiage'){
					form.value.huowujiage = row[x];
					disabledForm.value.huowujiage = true;
					continue;
				}
				if(x=='beizhu'){
					form.value.beizhu = row[x];
					disabledForm.value.beizhu = true;
					continue;
				}
				if(x=='fahuoren'){
					form.value.fahuoren = row[x];
					disabledForm.value.fahuoren = true;
					continue;
				}
				if(x=='fahuorenxingming'){
					form.value.fahuorenxingming = row[x];
					disabledForm.value.fahuorenxingming = true;
					continue;
				}
				if(x=='kehuzhanghao'){
					form.value.kehuzhanghao = row[x];
					disabledForm.value.kehuzhanghao = true;
					continue;
				}
				if(x=='kehuxingming'){
					form.value.kehuxingming = row[x];
					disabledForm.value.kehuxingming = true;
					continue;
				}
				if(x=='xiadanshijian'){
					form.value.xiadanshijian = row[x];
					disabledForm.value.xiadanshijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('kehuzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.fahuoren = json.kehuzhanghao
				disabledForm.value.fahuoren = true;
			}
			if(json.hasOwnProperty('kehuxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.fahuorenxingming = json.kehuxingming
				disabledForm.value.fahuorenxingming = true;
			}
			if(json.hasOwnProperty('kehuzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.kehuzhanghao = json.kehuzhanghao
				disabledForm.value.kehuzhanghao = true;
			}
			if(json.hasOwnProperty('kehuxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.kehuxingming = json.kehuxingming
				disabledForm.value.kehuxingming = true;
			}
		})
		context?.$http({
			url: `option/huowuleixing/huowuleixing`,
			method: 'get'
		}).then(res=>{
			huowuleixingLists.value = res.data.data
		})
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.tupian!=null) {
			form.value.tupian = form.value.tupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			//label
			.el-form-item__label {
			 color: #9E9E9E;
			 display: block;
			 width: 90px;
			 text-align: center;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 90px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: none;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 2px solid #5FB7FF;
						cursor: pointer;
						background-color: #fff;
						border-radius: 20px;
						width: 90px;
						line-height: 100px;
						text-align: center;
						height: 90px;
						//图标
						.el-icon{
							color: #9E9E9E;
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 2px solid #5FB7FF;
						cursor: pointer;
						background-color: #fff;
						border-radius: 20px;
						width: 90px;
						line-height: 100px;
						text-align: center;
						height: 90px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #B8B8B8;
			background: #CDE9FF;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_cancel:hover {
			color: #333;
			background: rgba(205, 233, 255, 0.5);
			font-size: 16px;
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0px 4px 10px 0px rgba(147,147,147,0.302);
			outline: 4px solid #EAF5FF;
			margin: 0 20px;
			color: #2C2C2C;
			background: #96C6EE;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_confirm:hover {
			background: rgba(150, 198, 238, 0.5);
			font-size: 16px;
		}
	}
</style>