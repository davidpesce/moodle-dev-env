
box = "bento/centos-7.3"

MACHINES = [
  {
    "hostname"=> "moodle",
    "ip"=> "192.168.35.7",
    "box"=> box,
    "memory"=> 1024,
    "cpus"=> 1,
    "ports"=> [ [80, 8083], ],
    "ansible_groups" => ["moodle", "database"]
  },
]


MARIADB_HOST = "192.168.35.7"