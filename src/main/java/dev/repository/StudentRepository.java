package dev.repository;

import dev.domain.Gender;
import dev.domain.Student;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class StudentRepository {

    private DataSource dataSource;

    public StudentRepository(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void create(Student student) throws SQLException {
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO students (name, email, date_of_birth, gender, quota, country) VALUES (?, ?, ?, ?, ?, ?)");
        preparedStatement.setString(1, student.getName());
        preparedStatement.setString(2, student.getEmail());
        preparedStatement.setDate(3, Date.valueOf(student.getDateOfBirth()));
        preparedStatement.setString(4, student.getGender().name());
        preparedStatement.setString(5, student.getQuota());
        preparedStatement.setString(6, student.getCountry());
        preparedStatement.execute();
    }

    public void update(Student student) throws SQLException {
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("UPDATE students SET name = ?, date_of_birth = ?, gender = ?, quota = ?, country = ? WHERE email = ?");
        preparedStatement.setString(1, student.getName());
        preparedStatement.setDate(2, Date.valueOf(student.getDateOfBirth()));
        preparedStatement.setString(3, student.getGender().name());
        preparedStatement.setString(4, student.getQuota());
        preparedStatement.setString(5, student.getCountry());
        preparedStatement.setString(6, student.getEmail());
        preparedStatement.execute();
    }

    public Student get(String email) throws SQLException {
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT name, email, date_of_birth, gender, quota, country FROM students WHERE email = ?");
        preparedStatement.setString(1, email);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            return new Student(
                    resultSet.getString("name"),
                    resultSet.getString("email"),
                    resultSet.getDate("date_of_birth").toLocalDate(),
                    Gender.valueOf(resultSet.getString("gender")),
                    resultSet.getString("quota"),
                    resultSet.getString("country")
            );
        }
        return new Student();
    }
}
