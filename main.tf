module "instance_project" {
  source = "../modules/ec2/"
  ami_id = local.ami
  region = local.region
  instanceType = local.instanceType
  tags = local.tags
  


}


output "instanceIP" {
  value = module.instance_project.instanceIP
}
