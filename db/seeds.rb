Ticket.destroy_all
Customer.destroy_all
BroadwayShow.destroy_all

c1 = Customer.create(name:"Elma")
c2 = Customer.create(name:"Jessica")
c3 = Customer.create(name:"Lamia")
c4 = Customer.create(name:"Rob")
c5 = Customer.create(name:"Jenny")

b1 = BroadwayShow.create(title:"Aladdin", genre:"Drama", in_theaters:true, seat_number:20)
b2 = BroadwayShow.create(title:"Jasmin", genre:"Horror", in_theaters:false, seat_number:30)
b3 = BroadwayShow.create(title:"Cinderella", genre:"Comedy", in_theaters:true, seat_number:40)
b4 = BroadwayShow.create(title:"Snow", genre:"Mystery", in_theaters:false, seat_number:50)
b5 = BroadwayShow.create(title:"Drew", genre:"Thriller", in_theaters:true,  seat_number:60)

t1 = Ticket.create(customer_id: c1.id, broadway_show_id: b1.id)
t2 = Ticket.create(customer_id: c2.id, broadway_show_id: b2.id)
t3 = Ticket.create(customer_id: c3.id, broadway_show_id: b3.id)
t4 = Ticket.create(customer_id: c4.id, broadway_show_id: b4.id)
t5 = Ticket.create(customer_id: c5.id, broadway_show_id: b5.id)
