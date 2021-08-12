$(function() {
  $(".other_study_material").hide();
});

$(function() {
  $('#report_study_material').change(function() {
    var str = $(this).val();
    if (str == 'その他'){
      $(".other_study_material").show();
    } else {
      $(".other_study_material").hide();
    }
  });
});


// const changeSelection = () => {
//   let otherStudyMaterial = document.getElementById("report_study_material").value
//   addEventListener("change", console.log("aaa"))
//   console.log(otherStudyMaterial)
// }

// window.addEventListener("load", changeSelection)