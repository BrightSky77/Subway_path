# Subway_path

## This project was started to find the shortest path of subway station in Korea.  I was curious whether prolog also could solve this complex subway path problem. 

## Method 1 
### I used the actual station distance data from "Seoul Open Data stadium website" and wrote a code that presents the user the shortest path from the departure to the arrival station. 
### This calculates all the possible routes from start to end node and present the minimum distance with station list. 
### I put the additional cost in the transfer station which is the average distance of adjacent station.(2km)

## Method 1 calculates all the possible routes so if the domain increases, then the computing time increases exponentially. To reduce the computing time, I had to come up with new
## algorithm that reduces the search space. First I thought of IDS, but at that time i didn't have much time and it takes a while to implement IDS code in prolog especially with  this kind of complex path problem. Secondly, I came of with idea to 

## Method 2 
###
##
