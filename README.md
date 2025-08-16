Lab - 2 :: SQL - Stored Procedures and Cursors

Q1:  This file creates the procedure ListAllSubscribers(), which uses a cursor to display the names of all subscribers in the database. 

Q2.
This script defines the procedure GetWatchHistoryBySubscriber(). It takes a subscriber’s ID as input and shows all the shows they have watched along with details.
Call  GetWatchHistoryBySubscriber(1);

Q3.
Here you’ll create AddSubscriberIfNotExists(), which adds a new subscriber only if they’re not already in the system.
call AddSubscriberIfNotExists('chandrakanth');      
call AddSubscriberIfNotExists('emily clark'); 


Q4:
This step creates SendWatchTimeReport(). The procedure goes through all subscribers who have watch history and calls GetWatchHistoryBySubscriber() for each one.


Q5.
Finally, this script defines LoopSubscribersWithWatchHistory(). It uses a cursor to loop through every subscriber (whether or not they have watch history) and shows their viewing details by calling GetWatchHistoryBySubscriber().



Git Repository Link: https://github.com/chandhu2k3/lab2



Name : Nagam Chandrakanth Reddy
Roll Number: 2025204003




