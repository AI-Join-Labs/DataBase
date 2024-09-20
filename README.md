# Fun Guide to Create a Relational Database!

Hello, data adventurer! 🌟 You're about to embark on an exciting journey to build a relational database. Throughout this guide, We'll walk you through each exercise in a fun and engaging way. Let’s get started!

## 🚀 Phase 1: Business Analysis
### 1. Identify the Business

First, choose your world: will it be an online store, a magical library, or an adventure hotel? 🏪📚🏨

### 2. Characteristics and Needs
Make a list of the tables you’ll need. Think of it like inventorying your characters! For example:
<ul>
  <li>Patients</li>
  <li>Doctors</li>
  <li>Medical History</li>
  <li>Appointments</li>
  <li>Drugs</li>
  <li>Medical Treatments</li>
  <li>Treatments & Drugs</li>
</ul>

### 3. Data Types and Relationships
Define what type of data each table will hold. Imagine each table as a group of friends! A hospital can have many patients. Relationships are key! ❤️

### 4. Schema Draft
Sketch a draft of your schema on paper or use a tool like Excalidraw. Make it as colorful as you like!

<img src="https://github.com/AI-Join-Labs/DataBase/blob/main/Diagram_Gestion%20Hospital.png" alt="Descripción de la imagen" width="800" >

## 🎨 Phase 2: Database Design
### 1. Use a Design Tool

Time to work your magic with tools like DrawDB or Dbdiagram.io. Let the design party begin! 🎉

### 2. Minimum Entities
Define your tables and data types. Think of them as characters in your story, each with their roles and characteristics.

### 3. Relationships

Specify primary and foreign keys. Remember: each character needs to know who their friends are. Let’s make those connections!

## ⚙️ Phase 3: Creating the Database and Relationships
### 1. Create the Database

Here comes the fun part! Create the tables in your database and define the primary keys. 🛠️
### 2. Define Relationships

Use foreign keys to link related tables. Connections are essential in the data world!

[Script File](https://github.com/AI-Join-Labs/DataBase/blob/main/scrip_tablas.sql)

## 🎉 Phase 4: Data Insertion
### 1. Data Generation

Get help from ChatGPT to generate at least 20 records per table. It’s like filling your story with unique characters! 🤖

### 2. Insert Data

Now it’s time to add those records to your MySQL database! Use SQL commands to insert the data. Celebrate each insertion! 🎊
[DataBase](https://github.com/AI-Join-Labs/DataBase/blob/main/Dump20240918.sql)

## 🔍 Phase 5: 10 Useful Queries
### 1. Basic Queries

Perform two simple queries. It’s like asking a friend what’s in the fridge! 🍕

1.1_List all patients born after 2000
```sql
select * from Pacientes where Fecha_Nacimiento > '2000-01-01';
``` 
1.2_Find patients with a specific last name.
```sql
select * from Pacientes where Apellido like 'Perez';
```

### 2. Filtering and Aggregation

Run at least 4 queries applying filters and aggregation functions. Each query will be a different adventure! Use COUNT, SUM, AVG, MAX, and MIN to gather valuable insights.

2.1_Count the total number of treatments per patient.
```sql
select ID_Paciente, count(ID_Tratamiento) from Tratamientos as TratamientosXPaciente
group by ID_Paciente;
```

2.2_Calculate the average cost of treatments.
```sql
select avg(costo) from Tratamientos;
```

2.3_Get the nearest appointment date for a specific patient.
```sql
select max(Fecha), max(Hora), ID_Paciente from Citas group by ID_Paciente limit 1;
```

2.4_List all medications that contain a specific word in their name.
```sql
select Nombre from Medicamentos where Nombre like '%meta%';
```

### 3. Sorting and Joins

Execute at least 4 queries that sort results and join tables. It’s like gathering all your characters for a big party! Make sure to use each type of JOIN (INNER, LEFT, RIGHT, FULL).

3.1_Count the number of appointments scheduled per doctor and filter by a minimum number of appointments.
```sql
select m.Nombre, m.Apellido, count(c.Fecha) from Citas c
left join Medicos m on c.ID_Medico = m.ID_Medico
group by c.ID_Medico having count(c.Fecha) >= 5;
```

3.2_Obtain the total sum of treatment costs per patient.
```sql
select p.Nombre, p.Apellido, sum(t.Costo) as CostoXTratamiento from Pacientes p
left join Tratamientos t on p.ID_Paciente = t.ID_Paciente group by p.ID_Paciente;
```

3.3_List patients ordered by date of birth, from youngest to oldest.
```sql
select * from Pacientes order by Fecha_Nacimiento desc;
```

3.4_Find doctors who care for patients with specific allergies.
```sql
select Medicos.Nombre as Nombre_Medico, Medicos.Apellido as Apellido_Medico,
Pacientes.Nombre as Nombre_Paciente, Pacientes.Apellido as Apellido_Paciente,
Historial_Medico.Alergias from Medicos
left join Citas on Medicos.ID_Medico = Citas.ID_Medico
left join Pacientes on Citas.ID_Paciente = Pacientes.ID_Paciente
left join Historial_Medico on Pacientes.ID_Paciente = Historial_Medico.ID_Paciente
where Historial_Medico.Alergias != 'Ninguna';
```

3.5_List treatments and the number of associated medications.
```sql
select t.Descripcion, count(m.Nombre) as CantidadMedicamentos from Medicamentos m
inner join Tratamientos_Medicamentos tratM on m.ID_Medicamento = tratM.ID_Medicamento
inner join Tratamientos t on t.ID_Tratamiento = tratM.ID_Tratamiento group by Descripcion;
```



## 🎉 Congratulations!

You've completed the journey of creating a relational database. Now you have a world full of well-organized data ready to explore. May your adventure continue, and may your queries always bring you the results you seek! 🚀✨








