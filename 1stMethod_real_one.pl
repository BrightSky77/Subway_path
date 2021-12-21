%출저 : https://www.data.go.kr/data/15041298/fileData.do, "국가철도공단_수도권9호선 역간거리", "국가철도공단_분당선_역간거리", "서울교통공사_역간거리"
% move의 3번째 인자는 역간 거리를 km단위로 환산한 수치를 의미한다. 데이터의 출저는 위와 같다.
%1호선
move(시청,종각,1).
move(종각,종로3가,0.8).
move(시청,서울역,1.1). 
move(서울역,남영,1.5).
move(남영,용산,1.1).
move(용산,노량진,1.5).
move(노량진,대방,1.1).
move(대방,신길,1.1).
move(신길,영등포,0.9).
move(영등포,신도림,1.1).

%2호선
move(대림,신도림,1.8).
move(신도림,문래,1.2).
move(문래,영등포구청,0.9).
move(영등포구청,당산,1.1).
move(당산,합정,2).
move(합정,홍대입구,1.1).
move(홍대입구,신촌,1.3).
move(신촌,이대,0.8).
move(이대,아현,0.9).
move(아현,충정로,0.8).
move(충정로,시청,1.1).
move(시청,을지로입구,0.7).
move(을지로입구,을지로3가,0.8).
move(을지로3가,을지로4가,0.6).
move(을지로4가,동대문역사문화공원,1).
move(동대문역사문화공원,신당,0.9).
move(신당,상왕십리,0.9).
move(상왕십리,왕십리,0.8).
move(왕십리,한양대,1).
move(한양대,뚝섬,1.1).
move(뚝섬,성수,0.8).
move(성수,건대입구,1.2).
move(건대입구,구의,1.6).
move(구의,강변,0.9).
move(강변,잠실나루,1.8).
move(잠실나루,잠실,1).
move(잠실,잠실새내,1.2).
move(잠실새내,종합운동장,1.2).

%3호선
move(을지로3가,충무로,0.7).
move(충무로,동대입구,0.9).
move(동대입구,약수,0.7).
move(약수,금호,0.8).
move(금호,옥수,0.8).
move(옥수,압구정,2.1).
move(압구정,신사,1.5).
move(신사,잠원,0.9).
move(잠원,고속터미널,1.2).


%4호선
move(동대문역사문화공원,충무로,1.3).
move(충무로,명동,0.7).
move(명동,회현,0.7).
move(화현,서울역,0.9).
move(서울역,숙대입구,1).
move(숙대입구,삼각지,1.2).
move(삼각지,신용산,0.7).
move(신용산,이촌,1.3).
move(이촌,동작,2.7).
move(동작,이수,1.8).


%5호선
move(충정로,서대문,0.7).
move(서대문,광화문,1.1).
move(광화문,종로3가,1.2).
move(종로3가,을지로4가,1).
move(을지로4가,동대문역사문화공원,0.9).
move(동대문역사문화공원,청구,0.9).
move(청구,신금호,0.9).
move(신금호,행당,0.8).
move(행당,왕십리,0.9).
move(충정로,애오개,0.9).
move(애오개,공덕,1.1).
move(공덕,마포,0.8).
move(마포,여의나루,1.8).
move(여의나루,여의도,1).
move(여의도,신길,1).
move(신길,영등포시장,1.1).
move(영등포시장,영등포구청,0.9).


%6호선
move(합정,상수,0.8).
move(상수,광흥창,0.9).
move(광흥창,대흥,1).
move(대흥,공덕,0.9).
move(공덕,효창공원앞,0.9).
move(효창공원앞,삼각지,1.2).
move(삼각지,녹사평,1.1).
move(녹사평,이태원,0.8).
move(이태원,한강진,1).
move(한강진,버티고개,1).
move(버티고개,약수,0.7).
move(약수,청구,0.8).
move(청구,신당,0.7).

%7호선
move(대림,신풍,1.4).
move(신풍,보라매,0.9).
move(보라매,신대방삼거리,0.8).
move(신대방삼거리,장승배기,1.2).
move(장승배기,상도,0.9).
move(상도,숭실대입구,0.9).
move(숭실대입구,남성,2).
move(남성,이수,1).
move(이수,내방,1).
move(내방,고속터미널,2.2).
move(고속터미널,반포,0.9).
move(반포,논현,0.9).
move(논현,학동,1).
move(학동,강남구청,0.9).
move(강남구청,청담,1.1).
move(청담,뚝섬유원지,2).
move(뚝섬유원지,건대입구,1).

%9호선
move(당산,국회의사당,1.5).
move(국회의사당,여의도,0.9).
move(여의도,샛강,0.8).
move(샛강,노량진,1.2).
move(노량진,노들,1.1).
move(노들,흑석,1.1).
move(흑석,동작,1.4).
move(동작,구반포,1).
move(구반포,신반포,0.7).
move(신반포,고속터미널,0.8).
move(고속터미널,사평,1.1).
move(사평,신논현,0.9).
move(신논현,언주,0.8).
move(언주,선정릉,0.9).
move(선정릉,삼성중앙,0.8).
move(삼성중앙,봉은사,0.8).
move(봉은사,종합운동장,1.4).


%수인분당선
move(왕십리,서울숲,2.2).
move(서울숲,압구정로데오,1.9).
move(압구정로데오,강남구청,1.2).
move(강남구청,선정릉,0.7).


connection(X,Y,L) :- move(X,Y,L);move(Y,X,L).
/* connection 코드를 아랫처럼 작성할 수도 있음 
path(Z,Z,L):-writelist(L). 
path(X,Y,L,H):-move(X,Z),not(member(Z,L)),path(Z,Y,[Z|L]),!. 
path(X,Y,L,H):-move(Z,X),not(member(Z,L)),path(Z,Y,[Z|L]),!.*/

minimum([C|D],M) :- min(D,C,M).

% L의 최솟값 구하기 
min([],M,M).
min([[P,L]|S],[_,M],Min) :- L < M, !, min(S,[P,L],Min). 
min([_|S],M,Min) :- min(S,M,Min).

member_set(E, S) :- member(E, S).

%어떤 환승역을 거쳐갔는지 찼기 위한 코드
intersection([], _, []).
intersection([H|T], S, [H|S_new]) :- member_set(H, S),
	intersection(T, S, S_new), !.
intersection([_|T], S, S_new) :- intersection(T, S, S_new), !.

%환승지점을 몇번 지나갔는지 counting
count([],0).
count([_|Tail], N) :- count(Tail, N1), N is N1 + 1.

countTransfer(A,B,R2) :- intersection(A,B,R),count(R,R2).
countTransfer2(Path,List,L,Len) :- countTransfer(Path,List,R),Len is L+ R*2. %환승지점을 지나가면 그에 맞는 추가적인 weight를 부여한다(자세한 설명은 word에 첨부해놓음)

path(A,B,Path,Len) :-
       ride(A,B,[A],Q,L),
       reverse(Q,Path),
       countTransfer2(Path,[종로3가,합정,공덕,충정로,당산,영등포구청,신도림,대림,여의도,신길,
      시청,서울역,노량진,을지로3가,충무로,삼각지,동작,이수,신당,청구,약수,고속터미널,
       왕십리,강남구청,선정릉,건대입구,종합운동장],L,Len).
        

ride(A,B,P,[B|P],L) :- 
       connection(A,B,L).

ride(A,B,Visited,Path,L) :-
       connection(A,C,D),           
       C \== B,
       not(member(C,Visited)),
       ride(C,B,[C|Visited],Path,L1),
       L is D+L1.  
       


optimal(A,B,Path,Length) :-
   bagof([P,L],path(A,B,P,L),Result),
   Result = [_|_], 
   minimum(Result,[Path,Length]).
