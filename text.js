function callTextApi() {
    var xhr = new XMLHttpRequest();
    var url = "https://apis.juhe.cn/fapig/soup/query";
    var params = "key=408134b12317914776223bf313d286af"; // 替换为你的API密钥

    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                if (response.error_code === 0) {
                    textArea.text = response.result.text; // 更新文本区域显示结果
                } else {
                    textArea.text = "错误: " + response.reason;
                }
            } else {
                textArea.text = "请求失败，HTTP状态码: " + xhr.status;
            }
        }
    }

    xhr.send(params);
}
