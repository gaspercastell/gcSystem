package gcsystemback



import org.junit.*
import grails.test.mixin.*

@TestFor(OrderDetailController)
@Mock(OrderDetail)
class OrderDetailControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/orderDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.orderDetailInstanceList.size() == 0
        assert model.orderDetailInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.orderDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.orderDetailInstance != null
        assert view == '/orderDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/orderDetail/show/1'
        assert controller.flash.message != null
        assert OrderDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/orderDetail/list'

        populateValidParams(params)
        def orderDetail = new OrderDetail(params)

        assert orderDetail.save() != null

        params.id = orderDetail.id

        def model = controller.show()

        assert model.orderDetailInstance == orderDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/orderDetail/list'

        populateValidParams(params)
        def orderDetail = new OrderDetail(params)

        assert orderDetail.save() != null

        params.id = orderDetail.id

        def model = controller.edit()

        assert model.orderDetailInstance == orderDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/orderDetail/list'

        response.reset()

        populateValidParams(params)
        def orderDetail = new OrderDetail(params)

        assert orderDetail.save() != null

        // test invalid parameters in update
        params.id = orderDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/orderDetail/edit"
        assert model.orderDetailInstance != null

        orderDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/orderDetail/show/$orderDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        orderDetail.clearErrors()

        populateValidParams(params)
        params.id = orderDetail.id
        params.version = -1
        controller.update()

        assert view == "/orderDetail/edit"
        assert model.orderDetailInstance != null
        assert model.orderDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/orderDetail/list'

        response.reset()

        populateValidParams(params)
        def orderDetail = new OrderDetail(params)

        assert orderDetail.save() != null
        assert OrderDetail.count() == 1

        params.id = orderDetail.id

        controller.delete()

        assert OrderDetail.count() == 0
        assert OrderDetail.get(orderDetail.id) == null
        assert response.redirectedUrl == '/orderDetail/list'
    }
}
