/* Create a SP  AVG_RESTAURANT to return the 
Avg Restaurant rating for a particular restaurant 
*/
DELIMITER $$
CREATE PROCEDURE avg_restaurant(IN RestaurantID INT, OUT outavgRest decimal(2, 1))
BEGIN
	DECLARE theAVGInfo DECIMAL(2, 1) ;
    SET theAVGInfo= (SELECT AVG(Ratings.Overall_rating) FROM Ratings
	INNER JOIN orders ON rating.order_id = orders.order_id
    WHERE orders.restaurant_id = RestaurantID) ;
	SET outavgRest= theAVGInfo ;
END $$