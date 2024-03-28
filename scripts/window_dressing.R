checkin_count <<- 0

checkin  <- function(title) {

  if (!exists("checkin_count")) {

    checkin_count <<- 1

  } else {

    checkin_count <<- checkin_count + 1

  }

  glue::glue("<br><div>
               <img src='../images/check.png' height='42' width='42' vertical-align='middle'>
                <span style='vertical-align: middle;'><font color='#6495ed' size='4'><strong> Check-In {checkin_count}: {title} </strong></font>
               </span></div><br>")


}


req_vid  <- function(title, url, type = "Required", embed = "youtube") {


  header <- glue::glue("<br><div>
               <img src='../images/video.png' height='42' width='42'>
               <span style='vertical-align: middle;'>
               <font color='#6495ed' size='4'><strong> {type} Video: <a href='{url}'>{title}</a> </strong></font>
               </span></div><br>")


  if (type == "Required" & embed == "youtube") {

    glue::glue("{header}
               <iframe width='560' height='315' src='{url}' frameborder='0'
               allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen>
               </iframe><br>")
  } else {

    header

  }

}

req_read  <- function(title, url, type = "Required") {


  glue::glue("<br><div>
              <img src='../images/book.png' height='42' width='42'>
             <span style='vertical-align: middle;'>
             <font color='#6495ed' size='4'><strong> {type} Reading: <a href='{url}'>{title} </a></strong></font>
             </span></div><br>")


}


extra_rec  <- function(title) {


  glue::glue("<br><div><img src='../images/qmark.png' height='30' width='30'>
    <span style='vertical-align: middle;'><strong><font size='4'> Extra Resources: </font></strong></span></div>")


}

just_for_fun  <- function(title, url) {

  glue::glue("<br><div><img src='../images/qmark.png' height='30' width='30'>
    <span style='vertical-align: middle;'><strong><font size='4'> Just for fun:
                    <a href='{url}'>{title}</a></font></strong></span></div>")

}


warning_sign  <- function(message) {


  glue::glue("<img src='../images/warning.png' height='20' width='20'>
    <strong> Alert: </strong> {message}")


}


make_summary_table <- function(vid_time, reading_time, work_time, canvas_activities) {

  glue::glue("<br><div><img src='../images/clock.png' height='30' width='30'>
    <span style='vertical-align: middle;'><strong> Time Estimates: </strong></span> <br>
             &nbsp;&nbsp;&nbsp;&nbsp; <img src='../images/video.png' height='20' width='20'> Videos: {vid_time} <br>
             &nbsp;&nbsp;&nbsp;&nbsp; <img src='../images/book.png' height='20' width='20'> Readings: {reading_time} <br>
             &nbsp;&nbsp;&nbsp;&nbsp; <img src='../images/computer.png' height='20' width='20'> Activities: {work_time} <br>
             &nbsp;&nbsp;&nbsp;&nbsp; <img src='../images/check.png' height='25' width='25'> Check-ins: {canvas_activities} <br></div><br>")



}
