/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author Juan
 */
public class BirthdateHandler {

    private String birthdate;

    public BirthdateHandler() {
        birthdate = null;

    }

    /**
     * @return the birthdate
     */
    public String getBirthdate() {
        LocalDate birthdateParsed = LocalDate.parse(birthdate);
        LocalDate fechaHoy = LocalDate.now();
        String age = String.valueOf(Period.between(birthdateParsed, fechaHoy).getYears()) + " años, " + String.valueOf(Period.between(birthdateParsed, fechaHoy).getMonths()) + " meses y " + String.valueOf(Period.between(birthdateParsed, fechaHoy).getDays()) + " días.";
        return age;
    }

    /**
     * @param birthdate the birthdate to set
     */
    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

}
