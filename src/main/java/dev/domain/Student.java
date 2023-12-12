package dev.domain;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.*;
import java.time.LocalDate;

public class Student {

    @NotNull
    @NumberFormat
    private Long id;

    @NotNull
    @Length(max = 100)
    private String name;

    @NotNull
    @Email
    @Length(max = 100)
    private String email;

    @NotNull
    @Past
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @Min(value = 6570, message = "Must be at least 18 years old")
    private LocalDate dateOfBirth;

    @NotNull
    private Gender gender;

    @NotNull
    @Length(max = 10)
    private String quota = "N/A";

    @NotNull
    @Length(max = 100)
    private String country = "Bangladeshi";

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getQuota() {
        return quota;
    }

    public void setQuota(String quota) {
        this.quota = quota;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
