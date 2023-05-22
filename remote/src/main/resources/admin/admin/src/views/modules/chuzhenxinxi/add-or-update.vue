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
                                <el-form-item label="医生工号" prop="yishenggonghao">
                                    <el-select v-model="ruleForm.yishenggonghao" placeholder="请选择医生工号">
                                        <el-option
                                                v-for="(item,index) in yishenggonghaoOptions"
                                                v-bind:key="index"
                                                :label="item"
                                                :value="item">
                                        </el-option>
                                    </el-select>
                                </el-form-item>
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
                                 <el-form-item v-if="type!='info'" label="照片" prop="zhaopian">
                                     <file-upload
                                             tip="点击上传照片"
                                             action="file/upload"
                                             :limit="3"
                                             :multiple="true"
                                             :fileUrls="ruleForm.zhaopian?ruleForm.zhaopian:''"
                                             @change="zhaopianUploadChange"
                                     ></file-upload>
                                 </el-form-item>
                              <div v-else>
                                  <el-form-item v-if="ruleForm.zhaopian" label="照片" prop="zhaopian">
                                      <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.zhaopian.split(',')" :src="item" width="100" height="100">
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
                                <el-form-item v-if="type!='info'" label="擅长" prop="shanzhang">
                                    <editor
                                            v-model="ruleForm.shanzhang"
                                            class="editor"
                                            action="file/upload">
                                    </editor>
                                </el-form-item>
                              <div v-else>
                                  <el-form-item v-if="ruleForm.shanzhang" label="擅长" prop="shanzhang">
                                      <span v-html="ruleForm.shanzhang"></span>
                                  </el-form-item>
                              </div>
                      </el-col>
                      <el-col :span="12">
                                <el-form-item label="出诊时间" prop="chuzhenshijian">
                                    <el-date-picker
                                            format="yyyy 年 MM 月 dd 日"
                                            value-format="yyyy-MM-dd HH:mm:ss"
                                            v-model="ruleForm.chuzhenshijian"
                                            type="date"
                                            placeholder="出诊时间">
                                    </el-date-picker>
                                </el-form-item>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="可约人数" prop="keyuerenshu">
                                      <el-input v-model="ruleForm.keyuerenshu"
                                                placeholder="可约人数" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.keyuerenshu" label="可约人数" prop="keyuerenshu">
                                          <el-input v-model="ruleForm.keyuerenshu"
                                                    placeholder="可约人数" readonly></el-input>
                                      </el-form-item>
                                  </div>
                      </el-col>
                      <el-col :span="12">

                                  <el-form-item  v-if="type!='info'"  label="挂号费" prop="guahaofei">
                                      <el-input v-model="ruleForm.guahaofei"
                                                placeholder="挂号费" clearable></el-input>
                                  </el-form-item>
                                  <div v-else>
                                      <el-form-item v-if="ruleForm.guahaofei" label="挂号费" prop="guahaofei">
                                          <el-input v-model="ruleForm.guahaofei"
                                                    placeholder="挂号费" readonly></el-input>
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
                      zhaopian: '',
                      keshi: '',
                      shanzhang: '',
                      chuzhenshijian: '',
                      keyuerenshu: '',
                      guahaofei: '',
                      clicktime: '',
                      clicknum: '',
      },

                    yishenggonghaoOptions: [],
                    keshiOptions: [],
        rules: {
                        addtime: [
                        ],
                        yishenggonghao: [
                            { required: true, message: '医生工号不能为空', trigger: 'blur' },
                        ],
                        yishengxingming: [
                        ],
                        zhicheng: [
                            { required: true, message: '职称不能为空', trigger: 'blur' },
                        ],
                        zhaopian: [
                        ],
                        keshi: [
                            { required: true, message: '科室不能为空', trigger: 'blur' },
                        ],
                        shanzhang: [
                        ],
                        chuzhenshijian: [
                            { required: true, message: '出诊时间不能为空', trigger: 'blur' },
                        ],
                        keyuerenshu: [
                            { required: true, message: '可约人数不能为空', trigger: 'blur' },
                                { validator: validateIntNumber, trigger: 'blur' },
                        ],
                        guahaofei: [
                            { required: true, message: '挂号费不能为空', trigger: 'blur' },
                                { validator: validateNumber, trigger: 'blur' },
                        ],
                        clicktime: [
                        ],
                        clicknum: [
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
                        if (o == 'zhaopian') {
                            this.ruleForm.zhaopian = obj[o];
                            continue;
                        }
                        if (o == 'keshi') {
                            this.ruleForm.keshi = obj[o];
                            continue;
                        }
                        if (o == 'shanzhang') {
                            this.ruleForm.shanzhang = obj[o];
                            continue;
                        }
                        if (o == 'chuzhenshijian') {
                            this.ruleForm.chuzhenshijian = obj[o];
                            continue;
                        }
                        if (o == 'keyuerenshu') {
                            this.ruleForm.keyuerenshu = obj[o];
                            continue;
                        }
                        if (o == 'guahaofei') {
                            this.ruleForm.guahaofei = obj[o];
                            continue;
                        }
                        if (o == 'clicktime') {
                            this.ruleForm.clicktime = obj[o];
                            continue;
                        }
                        if (o == 'clicknum') {
                            this.ruleForm.clicknum = obj[o];
                            continue;
                        }

              }
          }
                      this.$http({
                          url: `option/yisheng/yishenggonghao`,
                          method: "get"
                      }).then(({ data }) => {
                          if (data && data.code === 0) {
                              this.yishenggonghaoOptions = data.data;
                          } else {
                              this.$message.error(data.msg);
                          }
                      });
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
              url: `chuzhenxinxi/info/${id}`,
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
                      url: `chuzhenxinxi/${!this.ruleForm.id ? "save" : "update"}`,
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
                                  this.parent.chuzhenxinxiCrossAddOrUpdateFlag = false;
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
          this.parent.chuzhenxinxiCrossAddOrUpdateFlag = false;
      },
                zhaopianUploadChange(fileUrls) {
                     this.ruleForm.zhaopian = fileUrls;
                 },
  }
};
</script>
<style lang="scss" scoped>
.editor{
  height: 500px;
}
</style>
