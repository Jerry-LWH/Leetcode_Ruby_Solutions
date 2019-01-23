##
#Author: Wenhao Lin
#Question: Leetcode 929

def num_unique_emails(emails)
  emails.each_with_index do |e,i| 
    e.slice!(e.index('+')...e.index('@')) if e.include?('+') 
    sub = e[0...e.index('@')].delete('.')
    emails[i] = sub + e[e.index('@')...-1]
  end
  emails.uniq.size
end


