# pgsql-for-you
The script is completely written in bash.
This script is intended for programmers and system administrators to install and
configure the PostgreSQL DBMS. This will help standardize the installation in the
enterprise. One and two node configurations are currently available. Master-slave
configuration implemented in pcs + Corosync + Pasemaker software.

# Supported Operating Systems
- RHel
- CentOS

# What can this installer?
- Unattended PostgreSQL installation in stand-alone and master-slave configurations.
- Automatically configure backups PostgreSQL.
- Automatically tune and optimize PostgreSQL configurations.
- Automatically configure fence-agent.

# Development plan:
#### 1. First stage of development
- Changing the root directory for storing DBMSs, backups, transaction logs, logs.
- Running a script from under any user with sudo privilege.
- Change menu.
- Automatically configure the Prometheus monitoring agent.
- Bug detection.
- Adding help information.
- Setting up more accurate DBMS optimization.

#### 2. Second stage of development
- Added the ability to select the number of servers in the cluster.
- The ability to add servers for quorum, without storing the DBMS.
- Automatically translate configured single-node servers to a master-slave configuration.

#### 3. Third stage of development:
- Adding the ability to configure other OpenSource cluster solutions.
- Adding Auto-Tuning to Other PostgreSQL Performance Monitoring Tools.

# How to support this project:
- Script testing and bug detection.
- Optimization for other operating systems.
- Correction of errors in the documentation, translation, adding new documentation.
- Сreate scripts for opening connection pools.
- Writing a playbook for other cluster solutions.
- Optimization of algorithms for calculating DBMS configurations

# Contact for communication
- MAIL:     postgresqlclsearch@gmail.com
- Telegram: +7(901)187-51-47
- Viber:    +7(901)187-51-47
- Facebook: https://www.facebook.com/profile.php?id=100041576261405 

# A video with instructions for use will be recorded shortly
