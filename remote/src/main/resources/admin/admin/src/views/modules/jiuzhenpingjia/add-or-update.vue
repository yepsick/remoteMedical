<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
            <el-row>
                                    <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="医生工号" prop="yishenggonghao">
                                      <el-input v-model="ruleForm.yishenggonghao"
                                                placeholder="医生工号" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.yishenggonghao" label="医生工号" prop="yishenggonghao">
                                          <el-input v-model="ruleForm.yishenggonghao"
                                                    placeholder="医生工号" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="医生姓名" prop="yishengxingming">
                                      <el-input v-model="ruleForm.yishengxingming"
                                                placeholder="医生姓名" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.yishengxingming" label="医生姓名" prop="yishengxingming">
                                          <el-input v-model="ruleForm.yishengxingming"
                                                    placeholder="医生姓名" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="职称" prop="zhicheng">
                                      <el-input v-model="ruleForm.zhicheng"
                                                placeholder="职称" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.zhicheng" label="职称" prop="zhicheng">
                                          <el-input v-model="ruleForm.zhicheng"
                                                    placeholder="职称" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">
                                <el-form-item label="科室" prop="keshi">
                                    <el-select v-model="ruleForm.keshi" placeholder="请选择科室">
                                        <el-option
                                                v-for="(item,index) in keshiOptions"
                                                v-bind:key="index"
                                                :label="item"
                                                :value="item">
                                        </el-option>
                                    </el-select>
                                </el-form-item>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="出诊时间" prop="chuzhenshijian">
                                      <el-input v-model="ruleForm.chuzhenshijian"
                                                placeholder="出诊时间" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.chuzhenshijian" label="出诊时间" prop="chuzhenshijian">
                                          <el-input v-model="ruleForm.chuzhenshijian"
                                                    placeholder="出诊时间" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="时间段" prop="shijianduan">
                                      <el-input v-model="ruleForm.shijianduan"
                                                placeholder="时间段" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.shijianduan" label="时间段" prop="shijianduan">
                                          <el-input v-model="ruleForm.shijianduan"
                                                    placeholder="时间段" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="态度评分" prop="taidupingfen">
                                      <el-input v-model="ruleForm.taidupingfen"
                                                placeholder="态度评分" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.taidupingfen" label="态度评分" prop="taidupingfen">
                                          <el-input v-model="ruleForm.taidupingfen"
                                                    placeholder="态度评分" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="技术评分" prop="jishupingfen">
                                      <el-input v-model="ruleForm.jishupingfen"
                                                placeholder="技术评分" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.jishupingfen" label="技术评分" prop="jishupingfen">
                                          <el-input v-model="ruleForm.jishupingfen"
                                                    placeholder="技术评分" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">
                                <el-form-item v-if="type!='info'" label="评价内容" prop="pingjianeirong">
                                    <editor
                                            v-model="ruleForm.pingjianeirong"
                                            class="editor"
                                            action="file/upload">
                                    </editor>
                                </el-form-item>
                              <div v-else>
                                  <el-form-item v-if="ruleForm.pingjianeirong" label="评价内容" prop="pingjianeirong">
                                      <span v-html="ruleForm.pingjianeirong"></span>
                                  </el-form-item>
                              </div>
                      </el-col>
                      <el-col :span="12">
                                <el-form-item label="评价日期" prop="pingjiariqi">
                                    <el-date-picker
                                            format="yyyy 年 MM 月 dd 日"
                                            value-format="yyyy-MM-dd HH:mm:ss"
                                            v-model="ruleForm.pingjiariqi"
                                            type="date"
                                            placeholder="评价日期">
                                    </el-date-picker>
                                </el-form-item>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="用户名" prop="yonghuming">
                                      <el-input v-model="ruleForm.yonghuming"
                                                placeholder="用户名" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.yonghuming" label="用户名" prop="yonghuming">
                                          <el-input v-model="ruleForm.yonghuming"
                                                    placeholder="用户名" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="姓名" prop="xingming">
                                      <el-input v-model="ruleForm.xingming"
                                                placeholder="姓名" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.xingming" label="姓名" prop="xingming">
                                          <el-input v-model="ruleForm.xingming"
                                                    placeholder="姓名" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">
                                <el-form-item label="是否审核" prop="sfsh">
                                    <el-select v-model="ruleForm.sfsh" placeholder="请选择是否审核">
                                        <el-option key="是" label="是" value="是"></el-option>
                                        <el-option key="否" label="否" value="否"></el-option>
                                    </el-select>
                                </el-form-item>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="审核回复" prop="shhf">
                                      <el-input v-model="ruleForm.shhf"
                                                placeholder="审核回复" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.shhf" label="审核回复" prop="shhf">
                                          <el-input v-model="ruleForm.shhf"
                                                    placeholder="审核回复" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>

            </el-row>

        <el-form-item>
            <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
            <el-button v-if="type!='info'" @click="back()">取消</el-button>
            <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
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
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
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
      ruleForm: {
                      addtime: '',
                      yishenggonghao: '',
                      yishengxingming: '',
                      zhicheng: '',
                      keshi: '',
                      chuzhenshijian: '',
                      shijianduan: '',
                      taidupingfen: '',
                      jishupingfen: '',
                      pingjianeirong: '',
                      pingjiariqi: '',
                      yonghuming: '',
                      xingming: '',
                      sfsh: '',
                      shhf: '',
      },

                    keshiOptions: [],
        rules: {
                        addtime: [
                        ],
                        yishenggonghao: [
                            { required: true, message: '医生工号不能为空', trigger: 'blur' },
                        ],
                        yishengxingming: [
                            { required: true, message: '医生姓名不能为空', trigger: 'blur' },
                        ],
                        zhicheng: [
                        ],
                        keshi: [
                            { required: true, message: '科室不能为空', trigger: 'blur' },
                        ],
                        chuzhenshijian: [
                        ],
                        shijianduan: [
                        ],
                        taidupingfen: [
                        ],
                        jishupingfen: [
                        ],
                        pingjianeirong: [
                        ],
                        pingjiariqi: [
                        ],
                        yonghuming: [
                            { required: true, message: '用户名不能为空', trigger: 'blur' },
                        ],
                        xingming: [
                        ],
                        sfsh: [
                        ],
                        shhf: [
                        ],
        }
    };
  },
  props: ["parent"],
  computed: {
  },
  methods: {
      // 下载
      download(file) {
          window.open(`${file}`)
      },
      // 初始化
      init(id, type) {
          if (id) {
              this.id = id;
              this.type = type;
          }
          if (this.type == 'info' || this.type == 'else') {
              this.info(id);
          } else if (this.type == 'cross') {
              var obj = this.$storage.getObj('crossObj');
              for (var o in obj) {
                        if (o == 'id') {
                            this.ruleForm.id = obj[o];
                            continue;
                        }
                        if (o == 'addtime') {
                            this.ruleForm.addtime = obj[o];
                            continue;
                        }
                        if (o == 'yishenggonghao') {
                            this.ruleForm.yishenggonghao = obj[o];
                            continue;
                        }
                        if (o == 'yishengxingming') {
                            this.ruleForm.yishengxingming = obj[o];
                            continue;
                        }
                        if (o == 'zhicheng') {
                            this.ruleForm.zhicheng = obj[o];
                            continue;
                        }
                        if (o == 'keshi') {
                            this.ruleForm.keshi = obj[o];
                            continue;
                        }
                        if (o == 'chuzhenshijian') {
                            this.ruleForm.chuzhenshijian = obj[o];
                            continue;
                        }
                        if (o == 'shijianduan') {
                            this.ruleForm.shijianduan = obj[o];
                            continue;
                        }
                        if (o == 'taidupingfen') {
                            this.ruleForm.taidupingfen = obj[o];
                            continue;
                        }
                        if (o == 'jishupingfen') {
                            this.ruleForm.jishupingfen = obj[o];
                            continue;
                        }
                        if (o == 'pingjianeirong') {
                            this.ruleForm.pingjianeirong = obj[o];
                            continue;
                        }
                        if (o == 'pingjiariqi') {
                            this.ruleForm.pingjiariqi = obj[o];
                            continue;
                        }
                        if (o == 'yonghuming') {
                            this.ruleForm.yonghuming = obj[o];
                            continue;
                        }
                        if (o == 'xingming') {
                            this.ruleForm.xingming = obj[o];
                            continue;
                        }
                        if (o == 'sfsh') {
                            this.ruleForm.sfsh = obj[o];
                            continue;
                        }
                        if (o == 'shhf') {
                            this.ruleForm.shhf = obj[o];
                            continue;
                        }

              }
          }
                      this.$http({
                          url: `option/keshixinxi/keshi`,
                          method: "get"
                      }).then(({ data }) => {
                          if (data && data.code === 0) {
                              this.keshiOptions = data.data;
                          } else {
                              this.$message.error(data.msg);
                          }
                      });
      },

      info(id) {
          this.$http({
              url: `jiuzhenpingjia/info/${id}`,
              method: "get"
          }).then(({data}) => {
              if (data && data.code === 0) {
                  this.ruleForm = data.data;
              } else {
                  this.$message.error(data.msg);
              }
          });
      },
      // 提交
      onSubmit() {
          this.$refs["ruleForm"].validate(valid => {
              if (valid) {
                  this.$http({
                      url: `jiuzhenpingjia/${!this.ruleForm.id ? "save" : "update"}`,
                      method: "post",
                      data: this.ruleForm
                  }).then(({data}) => {
                      if (data && data.code === 0) {
                          this.$message({
                              message: "操作成功",
                              type: "success",
                              duration: 1500,
                              onClose: () => {
                                  this.parent.showFlag = true;
                                  this.parent.addOrUpdateFlag = false;
                                  this.parent.jiuzhenpingjiaCrossAddOrUpdateFlag = false;
                                  this.parent.search();
                              }
                          });
                      } else {
                          this.$message.error(data.msg);
                      }
                  });
              }
          });
      },
      // 获取uuid
      getUUID() {
          return new Date().getTime();
      },
      // 返回
      back() {
          this.parent.showFlag = true;
          this.parent.addOrUpdateFlag = false;
          this.parent.jiuzhenpingjiaCrossAddOrUpdateFlag = false;
      },
  }
};
</script>
<style lang="scss" scoped>
.editor{
  height: 500px;
}
</style>
