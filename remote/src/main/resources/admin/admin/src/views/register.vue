<template>
  <div>
    <img class="bg" src="@/assets/img/bg.jpg">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" class="login-form">
      <h1 class="h1">健康医疗预约系统 注册</h1>
                              <el-form-item v-if="tableName=='yisheng'" label="医生工号" prop="yishenggonghao">
        <el-input v-model="ruleForm.yishenggonghao" placeholder="医生工号"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='yisheng'" label="密码" prop="mima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='yisheng'" label="医生姓名" prop="yishengxingming">
        <el-input v-model="ruleForm.yishengxingming" placeholder="医生姓名"></el-input>
      </el-form-item>

                        <el-form-item v-if="tableName=='yisheng'" label="手机" prop="shouji">
        <el-input v-model="ruleForm.shouji" placeholder="手机"></el-input>
      </el-form-item>
                                                                                                                              <el-button @click="login()" class="btn-login" type="primary">注册</el-button>
    </el-form>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 注册
    login() {
                              if((!this.ruleForm.yishenggonghao) && `yisheng` == this.tableName){
        this.$message.error(`医生工号不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `yisheng` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }

      if((!this.ruleForm.yishengxingming) && `yisheng` == this.tableName){
              this.$message.error(`医生姓名不能为空`);
              return
            }

                                                if(`yisheng` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入电话格式`);
        return
      }
                                                                                                                                                this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `${this.tableName}/register`,
            method: "post",
            data:this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$router.replace({ path: "/login" });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
