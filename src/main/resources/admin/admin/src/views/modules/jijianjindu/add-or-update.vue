<template>
	<div class="addEdit-block" style="width: 100%;">
		<el-form
			:style='{"padding":"30px","boxShadow":"0 1px 6px #3b4896","borderRadius":"6px","flexWrap":"wrap","display":"flex"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="140px"
		>
			<template >
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="订单编号" prop="dingdanbianhao">
					<el-input v-model="ruleForm.dingdanbianhao" placeholder="订单编号" clearable  :readonly="ro.dingdanbianhao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="订单编号" prop="dingdanbianhao">
					<el-input v-model="ruleForm.dingdanbianhao" placeholder="订单编号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" clearable  :readonly="ro.yonghuming"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="收件人" prop="shoujianren">
					<el-input v-model="ruleForm.shoujianren" placeholder="收件人" clearable  :readonly="ro.shoujianren"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="收件人" prop="shoujianren">
					<el-input v-model="ruleForm.shoujianren" placeholder="收件人" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="收件电话" prop="shoujiandianhua">
					<el-input v-model="ruleForm.shoujiandianhua" placeholder="收件电话" clearable  :readonly="ro.shoujiandianhua"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="收件电话" prop="shoujiandianhua">
					<el-input v-model="ruleForm.shoujiandianhua" placeholder="收件电话" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="收件地址" prop="shoujiandizhi">
					<el-input v-model="ruleForm.shoujiandizhi" placeholder="收件地址" clearable  :readonly="ro.shoujiandizhi"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="收件地址" prop="shoujiandizhi">
					<el-input v-model="ruleForm.shoujiandizhi" placeholder="收件地址" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="select" v-if="type!='info'"  label="评价状态" prop="pingjiazhuangtai">
					<el-select :disabled="ro.pingjiazhuangtai" v-model="ruleForm.pingjiazhuangtai" placeholder="请选择评价状态" >
						<el-option
							v-for="(item,index) in pingjiazhuangtaiOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="评价状态" prop="pingjiazhuangtai">
					<el-input v-model="ruleForm.pingjiazhuangtai"
						placeholder="评价状态" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="物流公司" prop="wuliugongsi">
					<el-input v-model="ruleForm.wuliugongsi" placeholder="物流公司" clearable  :readonly="ro.wuliugongsi"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="物流公司" prop="wuliugongsi">
					<el-input v-model="ruleForm.wuliugongsi" placeholder="物流公司" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="date" v-if="type!='info'" label="发出日期" prop="fachuriqi">
					<el-date-picker
						value-format="yyyy-MM-dd HH:mm:ss"
						v-model="ruleForm.fachuriqi" 
						type="datetime"
						:readonly="ro.fachuriqi"
						placeholder="发出日期"
					></el-date-picker>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.fachuriqi" label="发出日期" prop="fachuriqi">
					<el-input v-model="ruleForm.fachuriqi" placeholder="发出日期" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="upload" v-if="type!='info'&& !ro.dingdanwenjian" label="订单文件" prop="dingdanwenjian">
					<file-upload
						tip="点击上传订单文件"
						action="file/upload"
						:limit="1"
						:multiple="true"
						:fileUrls="ruleForm.dingdanwenjian?ruleForm.dingdanwenjian:''"
						@change="dingdanwenjianUploadChange"
					></file-upload>
				</el-form-item>  
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else-if="ruleForm.dingdanwenjian" label="订单文件" prop="dingdanwenjian">
					<el-button :style='{"border":"0","cursor":"pointer","padding":"0 15px","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"rgba(0, 0, 0, 1)","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="text" size="small" @click="download($base.url+ruleForm.dingdanwenjian)">下载</el-button>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="运费" prop="yunfei">
					<el-input v-model="ruleForm.yunfei" placeholder="运费" clearable  :readonly="ro.yunfei"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="运费" prop="yunfei">
					<el-input v-model="ruleForm.yunfei" placeholder="运费" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="select" v-if="type!='info'"  label="运输进度" prop="yunshujindu">
					<el-select :disabled="ro.yunshujindu" v-model="ruleForm.yunshujindu" placeholder="请选择运输进度" >
						<el-option
							v-for="(item,index) in yunshujinduOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="运输进度" prop="yunshujindu">
					<el-input v-model="ruleForm.yunshujindu"
						placeholder="运输进度" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="车辆信息" prop="cheliangxinxi">
					<el-input v-model="ruleForm.cheliangxinxi" placeholder="车辆信息" clearable  :readonly="ro.cheliangxinxi"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="车辆信息" prop="cheliangxinxi">
					<el-input v-model="ruleForm.cheliangxinxi" placeholder="车辆信息" readonly></el-input>
				</el-form-item>
			</template>
			<el-form-item :style='{"padding":"0","margin":"0"}' class="btn">
				<el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"rgba(0, 0, 0, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
				<el-button :style='{"border":"1px solid rgba(0, 0, 0, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"rgba(0, 0, 0, 1)","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
				<el-button :style='{"border":"1px solid rgba(0, 0, 0, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"rgba(0, 0, 0, 1)","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				dingdanbianhao : false,
				yonghuming : false,
				shoujianren : false,
				shoujiandianhua : false,
				shoujiandizhi : false,
				pingjiazhuangtai : false,
				wuliugongsi : false,
				fachuriqi : false,
				dingdanwenjian : false,
				yunfei : false,
				yunshujindu : false,
				cheliangxinxi : false,
				ispay : false,
			},
			
			
			ruleForm: {
				dingdanbianhao: '',
				yonghuming: '',
				shoujianren: '',
				shoujiandianhua: '',
				shoujiandizhi: '',
				pingjiazhuangtai: '未评价',
				wuliugongsi: '',
				fachuriqi: '',
				dingdanwenjian: '',
				yunfei: '',
				yunshujindu: '运输中',
				cheliangxinxi: '',
			},
		
			pingjiazhuangtaiOptions: [],
			yunshujinduOptions: [],
			
			rules: {
				dingdanbianhao: [
				],
				yonghuming: [
				],
				shoujianren: [
				],
				shoujiandianhua: [
					{ validator: validateMobile, trigger: 'blur' },
				],
				shoujiandizhi: [
				],
				pingjiazhuangtai: [
				],
				wuliugongsi: [
				],
				fachuriqi: [
				],
				dingdanwenjian: [
				],
				yunfei: [
					{ required: true, message: '运费不能为空', trigger: 'blur' },
					{ validator: validateIntNumber, trigger: 'blur' },
				],
				yunshujindu: [
				],
				cheliangxinxi: [
				],
				ispay: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
	created() {
		this.ruleForm.fachuriqi = this.getCurDateTime()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='dingdanbianhao'){
							this.ruleForm.dingdanbianhao = obj[o];
							this.ro.dingdanbianhao = true;
							continue;
						}
						if(o=='yonghuming'){
							this.ruleForm.yonghuming = obj[o];
							this.ro.yonghuming = true;
							continue;
						}
						if(o=='shoujianren'){
							this.ruleForm.shoujianren = obj[o];
							this.ro.shoujianren = true;
							continue;
						}
						if(o=='shoujiandianhua'){
							this.ruleForm.shoujiandianhua = obj[o];
							this.ro.shoujiandianhua = true;
							continue;
						}
						if(o=='shoujiandizhi'){
							this.ruleForm.shoujiandizhi = obj[o];
							this.ro.shoujiandizhi = true;
							continue;
						}
						if(o=='pingjiazhuangtai'){
							this.ruleForm.pingjiazhuangtai = obj[o];
							this.ro.pingjiazhuangtai = true;
							continue;
						}
						if(o=='wuliugongsi'){
							this.ruleForm.wuliugongsi = obj[o];
							this.ro.wuliugongsi = true;
							continue;
						}
						if(o=='fachuriqi'){
							this.ruleForm.fachuriqi = obj[o];
							this.ro.fachuriqi = true;
							continue;
						}
						if(o=='dingdanwenjian'){
							this.ruleForm.dingdanwenjian = obj[o];
							this.ro.dingdanwenjian = true;
							continue;
						}
						if(o=='yunfei'){
							this.ruleForm.yunfei = obj[o];
							this.ro.yunfei = true;
							continue;
						}
						if(o=='yunshujindu'){
							this.ruleForm.yunshujindu = obj[o];
							this.ro.yunshujindu = true;
							continue;
						}
						if(o=='cheliangxinxi'){
							this.ruleForm.cheliangxinxi = obj[o];
							this.ro.cheliangxinxi = true;
							continue;
						}
				}
				






				this.ruleForm.pingjiazhuangtai='未评价'





				this.ruleForm.yunshujindu='运输中'


			}
			
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
					if(this.$storage.get("role")!="管理员") {
						this.ro.dingdanbianhao = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.yonghuming = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.shoujianren = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.shoujiandianhua = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.shoujiandizhi = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.pingjiazhuangtai = true;
					}
					if(json.wuliugongsi!=''&&json.wuliugongsi && this.$storage.get("role")!="管理员"){
						this.ruleForm.wuliugongsi = json.wuliugongsi
						this.ro.wuliugongsi = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.wuliugongsi = true;
					}
					if(this.$storage.get("role")!="管理员") {
						this.ro.fachuriqi = true;
					}
				} else {
					this.$message.error(data.msg);
				}
			});
			
            this.pingjiazhuangtaiOptions = "已评价,未评价".split(',')
            this.yunshujinduOptions = "运输中,已完成".split(',')
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `jijianjindu/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
	//解决前台上传图片后台不显示的问题
	let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {


















	if(this.ruleForm.dingdanwenjian!=null) {
		this.ruleForm.dingdanwenjian = this.ruleForm.dingdanwenjian.replace(new RegExp(this.$base.url,"g"),"");
	}









var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "jijianjindu/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `jijianjindu/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.jijianjinduCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `jijianjindu/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.jijianjinduCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.jijianjinduCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    dingdanwenjianUploadChange(fileUrls) {
	this.ruleForm.dingdanwenjian = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  color: #000;
	  	  font-weight: 600;
	  	  width: 140px;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 140px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 1px solid rgba(0, 0, 0, 1);
	  	  border-radius: 4px;
	  	  padding: 0 12px;
	  	  outline: none;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 1px solid rgba(0, 0, 0, 1);
	  	  border-radius: 4px;
	  	  padding: 0 10px;
	  	  outline: none;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 1px solid rgba(0, 0, 0, 1);
	  	  border-radius: 4px;
	  	  padding: 0 10px 0 30px;
	  	  outline: none;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  	  border: 1px dashed rgba(0, 0, 0, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 150px;
	  	  text-align: center;
	  	  height: 150px;
	  	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 1px dashed rgba(0, 0, 0, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 150px;
	  	  text-align: center;
	  	  height: 150px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 1px dashed rgba(0, 0, 0, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 150px;
	  	  font-size: 32px;
	  	  line-height: 150px;
	  	  text-align: center;
	  	  height: 150px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 1px solid rgba(0, 0, 0, 1);
	  	  border-radius: 4px;
	  	  padding: 12px;
	  	  outline: none;
	  	  color: rgba(0, 0, 0, 1);
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 120px;
	  	}
</style>
