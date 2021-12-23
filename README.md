# Subway_path

## This project was started to find the shortest path of subway station in Korea.  I was curious whether prolog also could solve this complex subway path problem. 

## **Method 1** 
### I used the actual station distance data from "Seoul Open Data stadium website" and wrote a code that presents the user the shortest path from the departure to the arrival station. 
### This calculates all the possible routes from start to end node and present the minimum distance with station list. 
### I put the additional cost in the transfer station which is the average distance of adjacent station.(2km)


## Method 1 calculates all the possible routes so if the domain increases, then the computing time increases exponentially. To reduce the computing time, I had to come up with new algorithm that reduces the search space. First I thought of IDS, but at that time i didn't have much time and it takes a while to implement IDS code in prolog especially with  this kind of complex path problem. So I had to thought of new idea that is simple then IDS and consumes less computational time then Method 1.


## **Method 2** 
### This time, I used the data that represent the actual arrival time from station to station. 
### If the current node is in the state of same line with the goal node, you do not transfer. In contrast, if the current node is not in the same line with the goal node you transfer if you can. 
### I assumed that it takes 5 minutes to transfer and the subway waiting time in each station( Starting from door opening to closing) is 20 seconds. 


## Method 2 did save the computational time alot but the accuracy wasn't that good as Method 1. By comparing Method 1 and Method 2 we can find the feature of search strategy that if you take one, you have to get rid of one. Balancing the computational time and the accuracy is the hard problem and I believe IDS or combining the Method 1 and Method 2 would solve this problem. 

#### **Implementing Method 1 :  optimal(start_node, end_node, P, L).         P prints the path of the result and L means the (actual distance) + (transfer cost)
#### **Implementing Method 2 : ride(start_node, end_node).                  It will print out the path and the total travel time. 
