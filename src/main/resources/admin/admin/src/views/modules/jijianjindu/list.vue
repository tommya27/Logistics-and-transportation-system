<template>
	<div class="main-content">
		<!-- 列表页 -->
		<template v-if="showFlag">
			<el-form class="center-form-pv" :style='{"top":"-130px","margin":"0 0 20px","position":"relative"}' :inline="true" :model="searchForm">
				<el-row :style='{"justifyContent":"flex-end","display":"flex"}' >
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}'>
						<label :style='{"margin":"0 10px 0 0","color":"#000","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"600","height":"40px"}' class="item-label">订单编号</label>
						<el-input v-model="searchForm.dingdanbianhao" placeholder="订单编号" clearable></el-input>
					</div>
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}' class="select" label="评价状态" prop="pingjiazhuangtai">
						<label :style='{"margin":"0 10px 0 0","color":"#000","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"600","height":"40px"}' class="item-label">评价状态</label>
						<el-select  @change="pingjiazhuangtaiChange" clearable v-model="searchForm.pingjiazhuangtai" placeholder="请选择评价状态">
							<el-option v-for="(item,index) in pingjiazhuangtaiOptions" v-bind:key="index" :label="item" :value="item"></el-option>
						</el-select>
					</div>
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}' class="select" label="运输进度" prop="yunshujindu">
						<label :style='{"margin":"0 10px 0 0","color":"#000","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"600","height":"40px"}' class="item-label">运输进度</label>
						<el-select  @change="yunshujinduChange" clearable v-model="searchForm.yunshujindu" placeholder="请选择运输进度">
							<el-option v-for="(item,index) in yunshujinduOptions" v-bind:key="index" :label="item" :value="item"></el-option>
						</el-select>
					</div>
					<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(59, 72, 150, 1)","width":"auto","fontSize":"14px","height":"40px"}' type="success" @click="search()">查询</el-button>
				</el-row>

				<el-row :style='{"margin":"90px 0 -130px","justifyContent":"flex-end","display":"flex"}'>
					<el-button :style='{"border":"1px solid #3b4896","cursor":"pointer","padding":"0 24px","margin":"0 10px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"#3b4896","width":"auto","fontSize":"14px","height":"40px"}' v-if="isAuth('jijianjindu','新增')" type="success" @click="addOrUpdateHandler()">新增</el-button>
					<el-button :style='{"border":"1px solid #3b4896","cursor":"pointer","padding":"0 24px","margin":"0 10px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"#3b4896","width":"auto","fontSize":"14px","height":"40px"}' v-if="isAuth('jijianjindu','删除')" :disabled="dataListSelections.length <= 0" type="danger" @click="deleteHandler()">删除</el-button>




					<el-button :style='{"border":"1px solid #3b4896","cursor":"pointer","padding":"0 24px","margin":"0 10px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"#3b4896","width":"auto","fontSize":"14px","height":"40px"}' v-if="isAuth('jijianjindu','报表')" type="warning" @click="chartDialog()">统计报表</el-button>
				</el-row>
			</el-form>
			
			<!-- <div> -->
				<el-table class="tables"
					:stripe='true'
					:style='{"width":"100%","padding":"0","borderColor":"#eee","borderStyle":"solid","borderWidth":"1px 0 0 1px","background":"#fff"}' 
					v-if="isAuth('jijianjindu','查看')"
					:data="dataList"
					v-loading="dataListLoading"
				@selection-change="selectionChangeHandler">
					<el-table-column :resizable='true' type="selection" align="center" width="50"></el-table-column>
					<el-table-column :resizable='true' :sortable='false' label="索引" type="index" width="50" />
					<el-table-column :resizable='true' :sortable='false'  
						prop="dingdanbianhao"
					label="订单编号">
						<template slot-scope="scope">
							{{scope.row.dingdanbianhao}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="yonghuming"
					label="用户名">
						<template slot-scope="scope">
							{{scope.row.yonghuming}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="shoujianren"
					label="收件人">
						<template slot-scope="scope">
							{{scope.row.shoujianren}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="shoujiandianhua"
					label="收件电话">
						<template slot-scope="scope">
							{{scope.row.shoujiandianhua}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="shoujiandizhi"
					label="收件地址">
						<template slot-scope="scope">
							{{scope.row.shoujiandizhi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="pingjiazhuangtai"
					label="评价状态">
						<template slot-scope="scope">
							{{scope.row.pingjiazhuangtai}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="wuliugongsi"
					label="物流公司">
						<template slot-scope="scope">
							{{scope.row.wuliugongsi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="fachuriqi"
					label="发出日期">
						<template slot-scope="scope">
							{{scope.row.fachuriqi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false' prop="dingdanwenjian" label="订单文件">
						<template slot-scope="scope">
							<el-button type="text" size="small" @click="download($base.url+scope.row.dingdanwenjian)">下载</el-button>
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="yunfei"
					label="运费">
						<template slot-scope="scope">
							{{scope.row.yunfei}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="yunshujindu"
					label="运输进度">
						<template slot-scope="scope">
							{{scope.row.yunshujindu}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="cheliangxinxi"
					label="车辆信息">
						<template slot-scope="scope">
							{{scope.row.cheliangxinxi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false' prop="ispay" label="是否支付">
						<template slot-scope="scope">
							<span style="margin-right:10px">{{scope.row.ispay=='已支付'?'已支付':'未支付'}}</span>
							<el-button v-if="scope.row.ispay!='已支付' && isAuth('jijianjindu','支付') " type="text" size="small" @click="payHandler(scope.row)">支付</el-button>
						</template>
					</el-table-column>
					<el-table-column width="300" label="操作">
						<template slot-scope="scope">
							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"#000","borderRadius":"40px","background":"rgba(228, 228, 228, 1)","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('jijianjindu','查看')" type="success" size="mini" @click="addOrUpdateHandler(scope.row.id,'info')">详情</el-button>
							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"#000","borderRadius":"40px","background":"rgba(228, 228, 228, 1)","width":"auto","fontSize":"14px","height":"32px"}' v-if="isAuth('jijianjindu','订单评价')" type="success" size="mini" @click="pingjiajiluCrossAddOrUpdateHandler(scope.row,'cross','','pingjiazhuangtai','你已评价过该订单！','已评价,未评价'.split(',')[0])">订单评价</el-button>
							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"#000","borderRadius":"40px","background":"rgba(228, 228, 228, 1)","width":"auto","fontSize":"14px","height":"32px"}' v-if="isAuth('jijianjindu','用户退货')" type="success" size="mini" @click="tuihuojiluCrossAddOrUpdateHandler(scope.row,'cross','','[1]','您已操作过用户退货！')">用户退货</el-button>
							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"#000","borderRadius":"40px","background":"rgba(228, 228, 228, 1)","width":"auto","fontSize":"14px","height":"32px"}' v-if=" isAuth('jijianjindu','修改')" type="primary" size="mini" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>





							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 5px 0","outline":"none","color":"#000","borderRadius":"40px","background":"rgba(228, 228, 228, 1)","width":"auto","fontSize":"14px","height":"32px"}' v-if="isAuth('jijianjindu','删除') " type="danger" size="mini" @click="deleteHandler(scope.row.id)">删除</el-button>
						</template>
					</el-table-column>
				</el-table>
				<el-pagination
					@size-change="sizeChangeHandle"
					@current-change="currentChangeHandle"
					:current-page="pageIndex"
					background
					:page-sizes="[10, 20, 30, 50]"
					:page-size="pageSize"
					:layout="layouts.join()"
					:total="totalPage"
					prev-text="<"
					next-text=">"
					:hide-on-single-page="true"
					:style='{"padding":"0","margin":"20px 0 0","whiteSpace":"nowrap","color":"#333","textAlign":"center","width":"100%","fontWeight":"500"}'
				></el-pagination>
			<!-- </div> -->
		</template>
		
		<!-- 添加/修改页面  将父组件的search方法传递给子组件-->
		<add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>

		<pingjiajilu-cross-add-or-update v-if="pingjiajiluCrossAddOrUpdateFlag" :parent="this" ref="pingjiajiluCrossaddOrUpdate"></pingjiajilu-cross-add-or-update>
		<tuihuojilu-cross-add-or-update v-if="tuihuojiluCrossAddOrUpdateFlag" :parent="this" ref="tuihuojiluCrossaddOrUpdate"></tuihuojilu-cross-add-or-update>




		<el-dialog
		  title="统计报表"
		  :visible.sync="chartVisiable"
		  width="800">
			<div id="yunshujinduChart" style="width:100%;height:600px;"></div>
		  <span slot="footer" class="dialog-footer">
			<el-button @click="chartDialog">返回</el-button>
		  </span>
		</el-dialog>
	</div>
</template>

<script>
import axios from 'axios'
import AddOrUpdate from "./add-or-update";
import pingjiajiluCrossAddOrUpdate from "../pingjiajilu/add-or-update";
import tuihuojiluCrossAddOrUpdate from "../tuihuojilu/add-or-update";
export default {
  data() {
    return {
      searchForm: {
        key: ""
      },
      form:{},
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      chartVisiable1: false,
      chartVisiable2: false,
      chartVisiable3: false,
      chartVisiable4: false,
      chartVisiable5: false,
      addOrUpdateFlag:false,
      pingjiajiluCrossAddOrUpdateFlag: false,
      tuihuojiluCrossAddOrUpdateFlag: false,
      layouts: ["total","prev","pager","next","sizes"],


    };
  },
  created() {
    this.init();
    this.getDataList();
    this.contentStyleChange()
  },
  mounted() {
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
    pingjiajiluCrossAddOrUpdate,
    tuihuojiluCrossAddOrUpdate,
  },
  methods: {

    contentStyleChange() {
      this.contentPageStyleChange()
    },
    // 分页
    contentPageStyleChange(){
      let arr = []

      // if(this.contents.pageTotal) arr.push('total')
      // if(this.contents.pageSizes) arr.push('sizes')
      // if(this.contents.pagePrevNext){
      //   arr.push('prev')
      //   if(this.contents.pagePager) arr.push('pager')
      //   arr.push('next')
      // }
      // if(this.contents.pageJumper) arr.push('jumper')
      // this.layouts = arr.join()
      // this.contents.pageEachNum = 10
    },

    pingjiajiluCrossAddOrUpdateHandler(row,type,crossOptAudit,statusColumnName,tips,statusColumnValue){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.pingjiajiluCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','jijianjindu');
      this.$storage.set('statusColumnName',statusColumnName);
      this.$storage.set('statusColumnValue',statusColumnValue);
      this.$storage.set('tips',tips);
	if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
		var obj = this.$storage.getObj('crossObj');
		for (var o in obj){
		  if(o==statusColumnName && obj[o]==statusColumnValue){
		    this.$message({
		      message: tips,
		      type: "success",
		      duration: 1500,
		      onClose: () => {
			this.getDataList();
		      }
		    });
		      this.showFlag = true;
		      this.pingjiajiluCrossAddOrUpdateFlag = false;
			return;
		  }
		}
	}
      this.$nextTick(() => {
      this.$refs.pingjiajiluCrossaddOrUpdate.init(row.id,type);
      });
    },
    tuihuojiluCrossAddOrUpdateHandler(row,type,crossOptAudit,statusColumnName,tips,statusColumnValue){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.tuihuojiluCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','jijianjindu');
      this.$storage.set('statusColumnName',statusColumnName);
      this.$storage.set('statusColumnValue',statusColumnValue);
      this.$storage.set('tips',tips);
	if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
		var obj = this.$storage.getObj('crossObj');
		for (var o in obj){
		  if(o==statusColumnName && obj[o]==statusColumnValue){
		    this.$message({
		      message: tips,
		      type: "success",
		      duration: 1500,
		      onClose: () => {
			this.getDataList();
		      }
		    });
		      this.showFlag = true;
		      this.tuihuojiluCrossAddOrUpdateFlag = false;
			return;
		  }
		}
	}
      this.$nextTick(() => {
      this.$refs.tuihuojiluCrossaddOrUpdate.init(row.id,type);
      });
    },
    payHandler(row){
      this.$storage.set('paytable','jijianjindu');
      this.$storage.set('payObject',row);
      this.$router.push('pay');
    },
    chartDialog() {
      this.chartVisiable = !this.chartVisiable;
      this.$nextTick(()=>{
        var yunshujinduChart = this.$echarts.init(document.getElementById("yunshujinduChart"),'mint');
        this.$http({
            url: "jijianjindu/group/yunshujindu",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
            let res = data.data;
            let xAxis = [];
            let yAxis = [];
            let pArray = []
            for(let i=0;i<res.length;i++){
                xAxis.push(res[i].yunshujindu);
                yAxis.push(parseFloat((res[i].total)));
                pArray.push({
                value: parseFloat((res[i].total)),
                name: res[i].yunshujindu
                })
                var option = {};
                option = {
                    title: {
                        text: '寄件进度',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                yunshujinduChart.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    yunshujinduChart.resize();
                };
            }
            }
        });
        // xcolumn ycolumn  
      })
    },





    init () {
          this.pingjiazhuangtaiOptions = "已评价,未评价".split(',')
          this.yunshujinduOptions = "运输中,已完成".split(',')
    },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },

    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc',
      }
          if(this.searchForm.dingdanbianhao!='' && this.searchForm.dingdanbianhao!=undefined){
            params['dingdanbianhao'] = '%' + this.searchForm.dingdanbianhao + '%'
          }
          if(this.searchForm.pingjiazhuangtai!='' && this.searchForm.pingjiazhuangtai!=undefined){
            params['pingjiazhuangtai'] = this.searchForm.pingjiazhuangtai
          }
          if(this.searchForm.yunshujindu!='' && this.searchForm.yunshujindu!=undefined){
            params['yunshujindu'] = this.searchForm.yunshujindu
          }
      this.$http({
        url: "jijianjindu/page",
        method: "get",
        params: params
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "jijianjindu/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },


  }

};
</script>
<style lang="scss" scoped>
	
	.center-form-pv {
	  .el-date-editor.el-input {
	    width: auto;
	  }
	}
	
	.el-input {
	  width: auto;
	}
	
	// form
	.center-form-pv .el-input /deep/ .el-input__inner {
				border: 0;
				border-radius: 4px;
				padding: 0 12px;
				outline: none;
				color: #000;
				background: rgba(248, 246, 247, 1);
				width: 170px;
				font-size: 14px;
				height: 40px;
			}
	
	.center-form-pv .el-select /deep/ .el-input__inner {
				border: 0;
				border-radius: 4px;
				padding: 0 10px;
				outline: none;
				color: #000;
				background: rgba(248, 246, 247, 1);
				width: 170px;
				font-size: 14px;
				height: 40px;
			}
	
	.center-form-pv .el-date-editor /deep/ .el-input__inner {
				border: 0;
				border-radius: 4px;
				padding: 0 10px 0 30px;
				outline: none;
				color: #000;
				background: rgba(248, 246, 247, 1);
				width: 170px;
				font-size: 14px;
				height: 40px;
			}
	
	// table
	.el-table /deep/ .el-table__header-wrapper thead {
				color: #fff;
				font-weight: 500;
				width: 100%;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr {
				background: #fff;
			}
	
	.el-table /deep/ .el-table__header-wrapper thead tr th {
				padding: 12px 0;
				background: rgba(59, 72, 150, 1);
				border-color: #eee;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}

	.el-table /deep/ .el-table__header-wrapper thead tr th .cell {
				padding: 0 10px;
				word-wrap: normal;
				word-break: break-all;
				white-space: normal;
				font-weight: bold;
				display: inline-block;
				vertical-align: middle;
				width: 100%;
				line-height: 24px;
				position: relative;
				text-overflow: ellipsis;
			}

	
	.el-table /deep/ .el-table__body-wrapper tbody {
				width: 100%;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr {
				background: #fff;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #000;
				background: #fff;
				border-color: rgba(113, 114, 153, 1);
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}
	
		.el-table /deep/ .el-table__body-wrapper tbody tr.el-table__row--striped td {
		background: rgba(248, 246, 247, 1);
	}
		
	.el-table /deep/ .el-table__body-wrapper tbody tr:hover td {
				padding: 12px 0;
				color: #000;
				border-color: #000;
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}
	
	.el-table /deep/ .el-table__body-wrapper tbody tr td {
				padding: 12px 0;
				color: #000;
				background: #fff;
				border-color: rgba(113, 114, 153, 1);
				border-width: 0 1px 1px 0;
				border-style: solid;
				text-align: center;
			}

	.el-table /deep/ .el-table__body-wrapper tbody tr td .cell {
				padding: 0 10px;
				overflow: hidden;
				word-break: break-all;
				white-space: normal;
				line-height: 24px;
				text-overflow: ellipsis;
			}
	
	// pagination
	.main-content .el-pagination /deep/ .el-pagination__total {
				margin: 0 10px 0 0;
				color: #666;
				font-weight: 400;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev {
				border: none;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #666;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-next {
				border: none;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #666;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				min-width: 35px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-prev:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #C0C4CC;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .btn-next:disabled {
				border: none;
				cursor: not-allowed;
				border-radius: 2px;
				padding: 0;
				margin: 0 5px;
				color: #C0C4CC;
				background: #f4f4f5;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}

	.main-content .el-pagination /deep/ .el-pager {
				padding: 0;
				margin: 0;
				display: inline-block;
				vertical-align: top;
			}

	.main-content .el-pagination /deep/ .el-pager .number {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #666;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #f4f4f5;
				text-align: center;
				min-width: 30px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number:hover {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #3b4896;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #f4f4f5;
				text-align: center;
				min-width: 30px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pager .number.active {
				cursor: default;
				padding: 0 4px;
				margin: 0 5px;
				color: #FFF;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #3b4896;
				text-align: center;
				min-width: 30px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes {
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input {
				margin: 0 5px;
				width: 100px;
				position: relative;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0 25px 0 8px;
				color: #606266;
				display: inline-block;
				font-size: 13px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: 100%;
				text-align: center;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
				top: 0;
				position: absolute;
				right: 0;
				height: 100%;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
				cursor: pointer;
				color: #C0C4CC;
				width: 25px;
				font-size: 14px;
				line-height: 28px;
				text-align: center;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump {
				margin: 0 0 0 24px;
				color: #606266;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input {
				border-radius: 3px;
				padding: 0 2px;
				margin: 0 2px;
				display: inline-block;
				width: 50px;
				font-size: 14px;
				line-height: 18px;
				position: relative;
				text-align: center;
				height: 28px;
			}
	
	.main-content .el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
				border: 1px solid #DCDFE6;
				cursor: pointer;
				padding: 0 3px;
				color: #606266;
				display: inline-block;
				font-size: 14px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #FFF;
				width: 100%;
				text-align: center;
				height: 28px;
			}
</style>
