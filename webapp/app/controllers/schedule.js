/**
 * @name scheduleCtrl
 */

app.controller('scheduleCtrl', function($scope) {
    $scope.schedule = {};
    $scope.schedule.days = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
    var hoursInterval = {
        start: 7,
        end: 20
    };

    $scope.schedule.hours = [];
    for (i = 0; i < hoursInterval.end - hoursInterval.start; i++) {
        var hour = {
			value: hoursInterval.start + i,
			description: (hoursInterval.start + i) + ":00 - " + (hoursInterval.start + i) + ":50"
		};
        $scope.schedule.hours.push(hour);
    }

	$scope.schedule.weekAvailability = [];
	for (i1 = 0; i1 < $scope.schedule.days.length; i1++){
		var day = [];
		for (i2 = 0; i2 < $scope.schedule.hours.length; i2++){
			day.push({available:false, color:"white"});
		}
		$scope.schedule.weekAvailability.push(day);
	}
	$scope.schedule.switchAvailability = function(item){
		item.available = !item.available;
		item.color = item.available ? "#59A6B0" : "white";
	}
});
