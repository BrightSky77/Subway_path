%각 호선별 direct node와 지하철 이동시간을 3rd argument에 입력해주었다. 이동시간은 "분"단위이다.
%1호선
move(시청,종각,2).
move(종각,종로3가,1).
move(시청,서울역,2). 
move(서울역,남영,3).
move(남영,용산,2).
move(용산,노량진,3).
move(노량진,대방,2).
move(대방,신길,2).
move(신길,영등포,1).
move(영등포,신도림,2).

%2호선
move(대림,신도림,2).
move(신도림,문래,2).
move(문래,영등포구청,1).
move(영등포구청,당산,2).
move(당산,합정,2).
move(합정,홍대입구,2).
move(홍대입구,신촌,2).
move(신촌,이대,1).
move(이대,아현,1).
move(아현,충정로,2).
move(충정로,시청,2).
move(시청,을지로입구,2).
move(을지로입구,을지로3가,1).
move(을지로3가,을지로4가,1).
move(을지로4가,동대문역사문화공원,1).
move(동대문역사문화공원,신당,1).
move(신당,상왕십리,1).
move(상왕십리,왕십리,1).
move(왕십리,한양대,1).
move(한양대,뚝섬,1).
move(뚝섬,성수,1).
move(성수,건대입구,2).
move(건대입구,구의,2).
move(구의,강변,1).
move(강변,잠실나루,2).
move(잠실나루,잠실,2).
move(잠실,잠실새내,2).
move(잠실새내,종합운동장,1).

%3호선
move(을지로3가,충무로,1).
move(충무로,동대입구,1).
move(동대입구,약수,1).
move(약수,금호,1).
move(금호,옥수,1).
move(옥수,압구정,2).
move(압구정,신사,2).
move(신사,잠원,2).
move(잠원,고속터미널,2).


%4호선
move(동대문역사문화공원,충무로,2).
move(충무로,명동,1).
move(명동,회현,1).
move(화현,서울역,1).
move(서울역,숙대입구,1).
move(숙대입구,삼각지,1).
move(삼각지,신용산,1).
move(신용산,이촌,2).
move(이촌,동작,3).
move(동작,이수,3).


%5호선
move(충정로,서대문,1).
move(서대문,광화문,2).
move(광화문,종로3가,2).
move(종로3가,을지로4가,2).
move(을지로4가,동대문역사문화공원,1).
move(동대문역사문화공원,청구,2).
move(청구,신금호,2).
move(신금호,행당,1).
move(행당,왕십리,1).
move(충정로,애오개,1).
move(애오개,공덕,2).
move(공덕,마포,2).
move(마포,여의나루,2).
move(여의나루,여의도,2).
move(여의도,신길,2).
move(신길,영등포시장,2).
move(영등포시장,영등포구청,1).

%6호선
move(합정,상수,1).
move(상수,광흥창,1).
move(광흥창,대흥,1).
move(대흥,공덕,1).
move(공덕,효창공원앞,1).
move(효창공원앞,삼각지,1).
move(삼각지,녹사평,2).
move(녹사평,이태원,1).
move(이태원,한강진,1).
move(한강진,버티고개,2).
move(버티고개,약수,1).
move(약수,청구,1).
move(청구,신당,1).

%7호선
move(대림,신풍,2).
move(신풍,보라매,1).
move(보라매,신대방삼거리,1).
move(신대방삼거리,장승배기,2).
move(장승배기,상도,1).
move(상도,숭실대입구,1).
move(숭실대입구,남성,3).
move(남성,이수,2).
move(이수,내방,2).
move(내방,고속터미널,3).
move(고속터미널,반포,1).
move(반포,논현,2).
move(논현,학동,1).
move(학동,강남구청,1).
move(강남구청,청담,1).
move(청담,뚝섬유원지,2).
move(뚝섬유원지,건대입구,2).

%9호선
move(당산,국회의사당,2).
move(국회의사당,여의도,1).
move(여의도,샛강,1).
move(샛강,노량진,2).
move(노량진,노들,1).
move(노들,흑석,1).
move(흑석,동작,2).
move(동작,구반포,1).
move(구반포,신반포,1).
move(신반포,고속터미널,2).
move(고속터미널,사평,2).
move(사평,신논현,2).
move(신논현,언주,2).
move(언주,선정릉,1).
move(선정릉,삼성중앙,2).
move(삼성중앙,봉은사,2).
move(봉은사,종합운동장,2).


%수인분당선
move(왕십리,서울숲,3).
move(서울숲,압구정로데오,2).
move(압구정로데오,강남구청,2).
move(강남구청,선정릉,1).

%환승없이 : Parent node가 Goal 노드랑 같을떄
transferOrNot(State,Next,Goal,Parent,L) :- line(Parent,N),line(Goal,M),N == M,
											connection(State,Next,L),line(Next,N).
%환승할시 : Parent node가 goal node랑 다를떄 환승지점에서 5분이 추가 시간으로 더해짐 
transferOrNot(State,Next,Goal,Parent,L) :- line(Parent,N),line(Goal,M),N \== M,
											connection(State,Next,L1),not(line(Next,N)),State \== Parent,L is L1 + 5.
%처음 Start 노드가 환승역이 있는지점이면 5분의 시간을 추가하는 것을 방지하기 위해 이 코드 작성
transferOrNot(State,Next,Goal,Parent,L) :- line(Parent,N),line(Goal,M),N \== M,
											connection(State,Next,L1),not(line(Next,N)),State == Parent,L is L1 .


%line_final(State,Line) :- line 
%지하철 호선별 역 list, Goal node 및 Parent node 의 호선을 알기위해 작성한 코드, N 값은 호선의 숫자를 의미한다.
line(Goal,N) :- member(Goal,[시청,서울역,남영,용산,노량진,대방,신길,영등포,신도림,종각,종로3가]), N is 1.
line(Goal,N) :- member(Goal,[대림,신도림,문래,영등포구청,당산,합정,홍대입구,신촌,이대,아현,충정로,시청,을지로입구,을지로3가,을지로4가,동대문역사문화공원,신당,상왕십리,왕십리,한양대,뚝섬,성수,건대입구,구의,강변,잠실나루,잠실,잠실새내,봉은사,종합운동장]),N is 2.
line(Goal,N) :- member(Goal,[을지로3가,충무로,동대입구,약수,금호,옥수,압구정,신사,잠원,고속터미널]),N is 3.
line(Goal,N) :- member(Goal,[동대문역사문화공원,충무로,명동,회현,서울역,숙대입구,삼각지,신용산,이촌,동작,이수]),N is 4.
line(Goal,N) :- member(Goal,[서대문,광화문,종로3가,을지로4가,충정로,애오개,공덕,마포,여의나루,여의도,신길,영등포시장,영등포구청,청구,신금호,행당,왕십리]),N is 5.
line(Goal,N) :- member(Goal,[합정,상수,광흥창,대흥,공덕,효창공원앞,삼각지,녹사평,이태원,한강진,버티고개,약수,청구,신당]),N is 6.
line(Goal,N) :- member(Goal,[대림,신풍,보라매,신대방삼거리,장승배기,상도,숭실대입구,남성,이수,내방,고속터미널,반포,논현,학동,강남구청,청담,뚝섬유원지,건대입구]), N is 7.
line(Goal,N) :- member(Goal,[당산,국회의사당,여의도,샛강,노량진,노들,흑석,동작,구반포,신반포,고속터미널,사평,신논현,언주,선정릉,삼성중앙,봉은사,종합운동장]), N is 9.
%신분당선 : 신분당선에 경우 N에 10을 대입해줌
line(Goal,N) :- member(Goal,[왕십리,서울숲,압구정로데오,강남구청,선정릉]), N is 10.

%connection을 "or" 기호인 ";"가 아닌 두개로 나누어줌. 이 알고리즘에서는 양방향 둘다 비교를 해야하기 때문에
connection(X,Y,L) :- move(X,Y,L).
connection(X,Y,L) :- move(Y,X,L).
%노드 A 가 환승지점에 있는지 없는지 chekcing
memTransfer(A) :- member(A,[종로3가,합정,공덕,충정로,당산,영등포구청,신도림,대림,여의도,신길,시청,서울역,노량진,을지로3가,충무로,삼각지,동작,이수,신당,청구,약수,고속터미널,왕십리,강남구청,선정릉,건대입구,종합운동장]).

%노선 결정 경로
% Case 1) 현재 노드에 환승지점이 있을 때 
move2(State,Next,T2,Goal,Parent) :- memTransfer(State),transferOrNot(State,Next,Goal,Parent,T2).
%Case 2) 현재 노드에 환승지점이 없을 때
move2(State,Next,T2,_,_) :- not(memTransfer(State)),
                                    connection(State,Next,T2).  %환승과 무관한 지점을 지날때의 코드다

member_set([State, Parent, _], [[State, Parent, _]|_]).
member_set(X, [_|T]) :- member_set(X, T).
add_if_not_in_set(X, S, S) :- member(X, S), !.
add_if_not_in_set(X, S, [X|S]).
empty_set([]).
empty_pq([]).
stack(State, [], [State]) :- !.                                 
stack(State, [H|Tail], [State, H|Tail]). 			%stack 함수를 변형하였다. 
stack_list([ ], L, L).
stack_list([State|Tail], L, New_L) :- stack(State, L, L2), stack_list(Tail, L2, New_L).
dequeue_pq(First, [First|Rest], Rest).
union([], S, S).
union([H|T], S, S_new) :- union(T, S, S2),
		       add_if_not_in_set(H, S2, S_new), !.



ride(Start, Goal) :-
	empty_set(Closed_set),
	empty_pq(Open),
	stack([Start, Start, 0], Open, Open_pq),
	path(Open_pq, Closed_set, Goal).

path(Open_pq, _, _) :-
	empty_pq(Open_pq),
	write('경로가 없습니다.').

path(Open_pq, Closed_set, Goal) :-
	dequeue_pq([State, Parent,Arrival], Open_pq, _),
	State = Goal,
	write('최적경로는: '), nl,
	printsolution([State, Parent, _], Closed_set),
    nl,
    write('소요 시간은: '),print(Arrival),write('분입니다').

path(Open_pq, Closed_set, Goal) :-
	dequeue_pq([State, Parent,T], Open_pq, Rest_open_pq),
        get_children([State, Parent, T],
		Rest_open_pq, Closed_set, Children, Goal),
	stack_list(Children, Rest_open_pq, New_open_pq),
	union([[State, Parent, T]], Closed_set, New_closed_set),
    path(New_open_pq, New_closed_set, Goal), !.


get_children([State,Parent,T], Rest_open_pq, Closed_set, Children, Goal) :-
     (bagof(Child, moves([State, Parent,T], Rest_open_pq, Closed_set, Child, Goal), Children);Children=[]).


moves([State, Parent, T], Rest_open_pq, Closed_set,
       [Next, State, New_T],Goal) :-
	move2(State, Next,T2,Goal,Parent),
	not(member([Next, _, _], Rest_open_pq)),
	not(member_set([Next, _, _], Closed_set)),
	New_T is T + T2 + 0.33 .      %지하철 역 정차 시간 20초정도라 가정
	


printsolution([State, State, _], _) :- write(State), nl.
printsolution([State, Parent, _], Closed_set) :-
	member_set([Parent, Grandparent, _], Closed_set),
	printsolution([Parent, Grandparent, _], Closed_set),
	write(State), nl.





