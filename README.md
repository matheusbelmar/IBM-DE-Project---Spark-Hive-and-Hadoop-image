# Spark-Hadoop-Docker

This project was originally developed as part of the final assignment of IBM’s Spark course on Coursera, and it consisted of a couple of data transformations and operations to be done in pyspark. But since I like to try hard things a little bit, instead of using the pre-configured environment on the platform, I decided to set up everything locally from scratch. Hence, I spent a week working on the docker setup, and about an hour doing the original spark assignment. I do think that this way I ended up learning more than originally intended, but I also probably reduced my life expectancy by a couple of years.

The environment includes:
- **Apache Spark (Standalone mode): 3.5.1** – for distributed data processing  
- **Apache Hadoop (HDFS): 3.2.1** – for storage layer and integration with Spark  
- **Hive Metastore: hive 3.1.3** – to manage metadata and enable SQL-based access to data  
- **PostgreSQL: 13.9** – as backend database for the Hive Metastore  
- **Python: 3.11** – for Spark applications and scripting  

---

## 🚀 Why this project?
Most online courses provide a ready-to-use cloud environment for Spark, which hides the complexity of setting up a real data engineering stack. By building this system from scratch with Docker, I gained deeper practical understanding of:
- Configuring and connecting distributed systems  
- Integrating Spark with Hadoop HDFS  
- Managing metadata with Hive Metastore + PostgreSQL  
- What a data catalogue does, it's importance, and how it works
- Running Spark jobs locally in a production-like environment  

---

## 🛠️ How to run

Clone the repository:
```bash
git clone https://github.com/<your-username>/spark-hadoop-docker.git
cd spark-hadoop-docker
```

Enter the docker folder and start the containers:
```bash
cd docker 
docker compose up -d --build
```

Inside the container, download the data:
```bash
make download
```

- Then once the data is downloaded, open Project.ipynb inside the notebooks folder and go about it. The notebook demonstrates how to process CSV datasets with PySpark, store results in Parquet, and register tables in Hive Metastore.
