const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot50460/",
            name: "springboot50460",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot50460/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "健康医疗预约系统"
        } 
    }
}
export default base
