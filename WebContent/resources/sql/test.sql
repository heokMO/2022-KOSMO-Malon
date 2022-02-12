create table survey(
survey_idx int primary key,
question varchar(500),
ans1 varchar(100),
ans2 varchar(100),
ans3 varchar(100),
ans4 varchar(100),
status char(1) default 'Y'
);
create table answer(
answer_idx int primary key,
survey_idx int, 
num int
);
create sequence survey_seq;
create sequence anser_seq;

insert into survey (survey_idx, question, ans1, ans2, ans3, ans4) values
(survey_seq.nextval , '좋아하는 과일은 무엇입니까?','사과','배','수박','참외');

select * from survey;