void main() {
  print(Week.DayMessage(Day.Monday));    
  print(Week.DayMessage(Day.Friday));    
  print(Week.DayMessage(Day.Saturday));  
}


enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

class Week {
  static String DayMessage(Day day) {
    switch (day) {
      case Day.Monday:
        return 'Start of the work week!';
      case Day.Tuesday:
        return 'Second day of the work week.';
      case Day.Wednesday:
        return 'Midweek day.';
      case Day.Thursday:
        return 'Almost there!';
      case Day.Friday:
        return 'Last day of the work week!';
      case Day.Saturday:
        return 'Weekend fun day!';
      case Day.Sunday:
        return 'Rest and recharge!';
      default:
        return 'Invalid day!';
    }
  }
}


