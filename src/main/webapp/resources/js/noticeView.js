/**
 * 
 */
 
const urlParams = new URLSearchParams(window.location.search);
const noticeNum = urlParams.get('num');
const noticeTitle = urlParams.get('title');
const noticeDate = urlParams.get('date');
const noticeCount = urlParams.get('count');
document.querySelector("#boardTitle").innerText += noticeTitle;
document.querySelector("#boardNum").innerText = noticeNum;
document.querySelector("#boardDate").innerText = noticeDate;
document.querySelector("#boardCount").innerText = noticeCount;
for(let i = 0; i < 6; i++){
    document.querySelector("#boardContent").innerHTML += noticeTitle +"<br>";
}
function goNotice(){
    location.href="/board/notice.jsp";
}