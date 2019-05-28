Ticket.destroy_all
Customer.destroy_all
BroadwayShow.destroy_all

c1 = Customer.create(name:"Elma", location: "Timesquare")
c2 = Customer.create(name:"Jessica", location: "Queens")
c3 = Customer.create(name:"Lamia", location: "LIC")
c4 = Customer.create(name:"Rob", location: "Woodside")
c5 = Customer.create(name:"Jenny", location: "Bronx")

b1 = BroadwayShow.create(title:"Aladdin", genre:"Drama", in_theaters:true)
b2 = BroadwayShow.create(title:"Jasmin", genre:"Horror", in_theaters:false)
b3 = BroadwayShow.create(title:"Cinderella", genre:"Comedy", in_theaters:true)
b4 = BroadwayShow.create(title:"Snow", genre:"Mystery", in_theaters:false)
b5 = BroadwayShow.create(title:"Drew", genre:"Thriller", in_theaters:true)
#
t1 = Ticket.create(customer_id: c1.id, broadway_show_id: b1.id, number_of_people: 5, seat_number: 2, time:"7:00pm", date: "5/28/19")
t2 = Ticket.create(customer_id: c2.id, broadway_show_id: b2.id, number_of_people: 8, seat_number: 3, time:"9:00pm", date: "5/29/19")
t3 = Ticket.create(customer_id: c3.id, broadway_show_id: b3.id, number_of_people: 2, seat_number: 4, time:"10:00pm", date: "6/28/19")
t4 = Ticket.create(customer_id: c4.id, broadway_show_id: b4.id, number_of_people: 3, seat_number: 5, time:"4:00pm", date: "6/29/19")
t5 = Ticket.create(customer_id: c5.id, broadway_show_id: b5.id, number_of_people: 1, seat_number: 6, time:"3:00pm", date: "6/30/19")
