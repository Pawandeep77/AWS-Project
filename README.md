# AWS-Project
# AWS Project: GLPI Deployment

##  Project Overview
This project sets up and configures GLPI, an IT asset management and service desk solution, on a free-tier AWS VM. A second VM is used for client testing.

   Setup Steps
1. Provision AWS EC2 Instances: One for GLPI, one as a client.
2. Install GLPI: Using `installation.sh` script.
3. Configure GLPI: Database, users, SSL, and monitoring.
4. Test from Client VM: Create tickets, add assets.
5. Enable Monitoring & Notifications:Logs

   Repository Structure
- installation.sh → Automates GLPI installation.
- configuration.md → Step-by-step setup guide.
- client-test.md→ Testing procedures.
- monitoring.md→ Enabling monitoring.
- screenshots/→ Contains screenshots of the setup.

Author
Pawandeep77

