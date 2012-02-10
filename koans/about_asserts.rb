	#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class AboutAsserts < EdgeCase::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    assert true                # This should be true, Se cambio a true ya que el assert lo que hace es verificar si ;a variable a la que es 					dirigido es true. ej. decimo assert x y se prueba si x == true
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    assert true, "This should be true -- Please fix this" #el mensaje colocado sale cuando el test del assert falla
  end

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    expected_value = 2 #se acomodo este 2
    actual_value = 1 + 1

    assert expected_value == actual_value
  end

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
    expected_value = 2
    actual_value = 1 + 1

    assert_equal expected_value, actual_value #Cambiamos el 2 anterior pero esta vez este nuevo metodo identifica si los dos parametros son iguales 							y de ser asi la prueba pasa
  end

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    assert_equal 2, 1 + 1 #Evalua las posibles diferencias entre los 2 parametros
  end
end
