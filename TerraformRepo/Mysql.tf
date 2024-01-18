// AWS RDS Terraform Code: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
// URL : https://www.youtube.com/watch?v=D-t4UR4HfNc&list=PLOa-edppsqFlLbAQJiJb_f2vmyIXY817_&index=10

 resource "aws_db_instance" "myrds" {
    allocated_storage   = var.dbstorage
   storage_type        = "gp2"
   identifier          = "rdstf"
   engine              = "mysql"
   engine_version      = "8.0.27"
   instance_class      = "db.t2.micro"
   username            = "admin"
   password            = "Passw0rd!123"
   publicly_accessible = true
   skip_final_snapshot = true

   tags = {
     Name = "MyRDS"
   }
 }