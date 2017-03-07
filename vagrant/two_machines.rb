
box = "bento/centos-7.3"

MACHINES = [
  {
    "hostname"=> "mdl-db",
    "ip"=> "192.168.35.4",
    "box"=> box,
    "memory"=> 1024,
    "cpus"=> 1,
    "ports"=> [],
    "ansible_groups" => ["database"]
  },  
  {
    "hostname"=> "mdl-web",
    "ip"=> "192.168.35.5",
    "box"=> box,
    "memory"=> 512,
    "cpus"=> 1,
    "ports"=> [ [80, 8083], ],
    "ansible_groups" => ["moodle"]
  },
]


MARIADB_HOST = MACHINES[0]["ip"]