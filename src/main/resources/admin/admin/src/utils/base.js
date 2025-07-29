const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot91u00/",
            name: "springboot91u00",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "物流运输系统"
        } 
    }
}
export default base
