defmodule Polaris.IconTest do
  use ExUnit.Case, async: true
  use Temple
  use ExPolaris.Support.Utils

  test "checks the html output of Icon component" do
    result =
      temple do
        c(Polaris.Icon, source: "wifi_major")
      end

    assert no_nlws(evaluate_template(result)) ==
             ~s"<span class=\"Polaris-Icon\"> <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\" fill=\"currentColor\"><path d=\"M10 18a1.501 1.501 0 010-3 1.501 1.501 0 010 3zM1.004 8a.997.997 0 01-.607-1.795C3.106 4.138 6.516 3 10 3c3.483 0 6.892 1.137 9.598 3.202a1 1 0 11-1.212 1.59C16.026 5.991 13.048 5 10 5c-3.05 0-6.029.992-8.391 2.795A.988.988 0 011.004 8zM4 11a.996.996 0 01-.958-1.293.998.998 0 01.352-.502C5.255 7.783 7.602 7 10 7c2.397 0 4.742.782 6.601 2.203a1 1 0 01-1.213 1.59C13.875 9.637 11.961 9 10 9c-1.962 0-3.877.638-5.392 1.795a.989.989 0 01-.605.205h-.002zm8.994 3a.994.994 0 01-.594-.197 4.052 4.052 0 00-4.804 0 .999.999 0 11-1.192-1.606c2.108-1.565 5.079-1.566 7.187 0A1 1 0 0112.996 14z\" fill=\"#5C5F62\"/></svg></span>"
  end
end
