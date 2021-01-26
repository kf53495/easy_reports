const setDate = () => {
  const date = new Date();
    document.getElementById("report_month").value = date.getMonth()+1;
    document.getElementById("report_date").value = date.getDate();

  const days = ["日", "月", "火", "水", "木", "金", "土"];
    document.getElementById("report_day").value = days[date.getDay()];
}

window.addEventListener("load", setDate)