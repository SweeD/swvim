require 'test/unit'

class InstallScriptTest < Test::Unit::TestCase
  def test_install
    symlink_vim = ENV['HOME'] + "/.vim"
    symlink_vimrc = ENV['HOME'] + "/.vimrc"
    assert !File.exist?(symlink_vim)
    assert !File.exist?(symlink_vimrc)

    assert system("./install.sh")

    assert File.symlink?(symlink_vim)
    assert File.symlink?(symlink_vimrc)
  end
end
