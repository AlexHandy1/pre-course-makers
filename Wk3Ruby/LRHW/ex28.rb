puts "1. true" if true && true == true
puts "2. false" if (false && true) == false
puts "3. false" if (1 == 1 && 2 == 1) == false
puts "4. true" if ("test" == "test") == true
puts "5. true" if (1 == 1 || 2 != 1) == true
puts "6. true" if (true && 1 == 1) == true
puts "7. false" if (false && 0 != 0) == false
puts "8. true" if (true || 1 == 1) == true
puts "9. false" if ("test" == "testing") == false
puts "10. false" if (1 != 0 && 2 == 1) == false
puts "11. true" if ("test" != "testing") == true
puts "12. false" if ("test" == 1) == false
puts "13. true" if !(true && false) == true
puts "14. false" if !(1 == 1 && 0 != 1) == false
puts "15. false" if !(10 == 1 || 1000 == 1000) == false
puts "16. false" if !(1 != 10 || 3 == 4) == false
puts "17. true" if !("testing" == "testing" && "Zed" == "Cool Guy") == true
puts "18. true" if 1 == 1 && (!("testing" == 1 || 1 == 0)) == true
puts "19. false" if (("chunky" == "bacon") && (!(3 == 4 || 3 == 3))) == false
puts "20. false" if 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")) == false
