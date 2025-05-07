use Students_degrees;

-- جميع البيانات
select * from S_Data;

-- العشره الاوائل
select top 10  الاسم , round(الدرجة , 2)
from S_Data
order by الدرجة desc

-- عدد طلاب الناجحين والراسبين
select student_case_desc, count(رقم_الجلوس)
from S_Data
group by student_case_desc 

-- متوسط درجه النجاح و الرسوب
select student_case_desc, round(avg(الدرجة) , 2) 
from S_Data
group by student_case_desc
order by round(avg(الدرجة) , 2) desc

-- عدد الطلاب الناجحين دور اول في الانتظام والانتساب والتحويل
select c_flage ,count(رقم_الجلوس)
from S_Data
where student_case = 1
group by c_flage

-- عدد الطلاب الراسبين في الانتظام والانتساب والتحويل
select c_flage ,count(رقم_الجلوس)
from S_Data
where student_case = 3
group by c_flage


-- عدد الطلاب الانتظام والانتساب والتحويل
select c_flage , count(رقم_الجلوس)
from S_Data
group by c_flage



