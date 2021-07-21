output "vpc" {
    value = module.vpc  #Reference to entire vpc module 
}

output "sg" {
    value = {     #Constructs a new object containing the id for each of three security groups.
        lb = module.lb_sg.security_group.id 
        db = module.db_sg.security_group.id
        websvr = module.websvr_sg.security_group.id
    }
}