
# This recipe will add the supplied key to authorized key file
file '/root/.ssh/authorized_keys' do
	content 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAoa79JWMt+1bOlqhMkx/CnKn6N8RnRogg10xbWOQ7FkgI7luOlCNZZUMnqHUoeeEAoIpPuwonhRQGSe4qB6WQ0ypy9fl2QFrfplWsYpEjE8dM7e2Zr3nqJnUECEZ5fOHVsbQeYvOkNVHfFi5eAQd39lR4lloZ8rgpFi+WW4wjccivLaV1Ucejp6A2HrUljbuQZ6HE5SthT/m6GAK3THTj8dDJNlU4HI5BX4dTUnkfyA7G0kPTEzD0aEHduZwvNEkRUHdV/FhDG3H4Iv2hBWIN5R/2HyWNe8nRfpe3AZsrDDt31wCAlx/bn8YbNIabyfBYj7VmZkQyUNSnXA2z7M6dmQ== root'
end

