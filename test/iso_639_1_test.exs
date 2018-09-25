defmodule Iso639_1Test do
  use ExUnit.Case

  describe "exists?/1" do
    test "with atoms" do
      assert Iso639_1.exists?(:aa)
      refute Iso639_1.exists?(:ac)
    end

    test "with strings" do
      assert Iso639_1.exists?("aa")
      assert Iso639_1.exists?("EN")
      refute Iso639_1.exists?("sz")
      refute Iso639_1.exists?("random")
      refute Iso639_1.exists?("enen")
    end

    test "with other" do
      refute Iso639_1.exists?(1)
      refute Iso639_1.exists?(3.141)
      refute Iso639_1.exists?(%{a: 1})
      refute Iso639_1.exists?(b: 2, c: 3)
      refute Iso639_1.exists?('aa')
    end
  end
end
