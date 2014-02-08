Hansode.controller('EstimateItemsController', ['$scope', '$resource', function($scope, $resource) {
  var EstimateItem = $resource('/estimates/:estimateId/items/:id.json', { id: '@id' }, {
    update: { method: 'PUT', responseType: 'json' }
  })

  $scope.estimateId = 0
  $scope.items = []

  $scope.init = function(id) {
    $scope.estimateId = id
    $scope.items = EstimateItem.query({ estimateId: $scope.estimateId })
  }

  $scope.add = function(event) {
    var newItem = new EstimateItem({ title: '', price: 0 })
    newItem.$save({ estimateId: $scope.estimateId })
    $scope.items.push( newItem )
  }

  $scope.update = function(event, item) {
    item.$update({ estimateId: $scope.estimateId })
  }

  $scope.keydown = function(event, index) {
    var item = $scope.items[index]
    console.log(event)

    if ( event.keyCode == 8 && item.title == '' ) {
      $scope.items.splice(index, 1)
      item.$delete({ estimateId: $scope.estimateId })
    }
  }
}])
