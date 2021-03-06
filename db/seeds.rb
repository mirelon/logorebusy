Word.delete_all

def create_word prefix, image_file_name, suffix
  Word.create! prefix: prefix, image: File.new( "#{Rails.root}/app/assets/images/#{image_file_name}"), suffix: suffix, lang: :sk
end

create_word('',       'duch.png',   'aplný')
create_word('zlo',    'duch.png',   '')
create_word('',       'hore.png',   'nie')
create_word('',       '3.png',      'čko')
create_word('s',      '3.png',      'h')
create_word('',       '100.jpg',    'lička')
create_word('me',     '100.png',    '')
create_word('michal', 'ovce.gif',   '')
create_word('',       'kvet.jpg',   'ináč',)
create_word('',       'lev.jpg',    'anduľa')
create_word('po',     'lev.jpg',    'a')
create_word('pŕ',     'hlava.png',  '')
create_word('bar',    'oko.png',    '')
create_word('',       'kriz.png',   'ovka')
create_word('pod',    'nos.jpeg',   '')
create_word('o',      'sip.png',    'aná')
create_word('ko',     'zub.jpg',    '')
create_word('',       'med.jpg',    'ovník')
create_word('p',      'ucho.jpg',   'v')
create_word('na',     '5.gif',      'ie')
create_word('',       'pero.jpg',   'xid')
create_word('kap',    'usta.jpg',   '')
create_word('p',      'luk.jpg',    'ovník')
create_word('',       'mec.png',    'iar')
create_word('',       'noha.png',   'vice')
create_word('',       'hus.png',    'penina')
create_word('o',      'dom.png',    'knúť')
create_word('po',     'vlak.jpg',   '')
create_word('p',      'lienka.png', '')