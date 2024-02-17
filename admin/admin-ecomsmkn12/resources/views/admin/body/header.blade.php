<header>
			<div class="topbar d-flex align-items-center">
				<nav class="navbar navbar-expand">
					<div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
					</div>
					
					
					<div class="user-box dropdown">
						<a class="d-flex align-items-center nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							@php
 $adminData = App\Models\User::find(1);
@endphp

 <img src="{{ (!empty($adminData->profile_photo_path))?url('upload/admin_images/'.$adminData->profile_photo_path):url('upload/no_image.jpeg')   }}" class="user-img" alt="user avatar">
							<div class="user-info ps-3">
								 <p class="user-name mb-0"> {{ $adminData->name }} </p>
		 <p class="designattion mb-0">{{ $adminData->email }}</p>
							</div>
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li><a class="dropdown-item" href="{{ route('user.profile')}}"><i class="bx bx-user"></i><span>Profile</span></a>
							</li>
							 <li><a class="dropdown-item" href="{{ route('change.password')}}"><i class="bx bx-cog"></i><span>Change Password</span></a>
		 </li>
		
							<li>
								<div class="dropdown-divider mb-0"></div>
							</li>
							<li><a class="dropdown-item" href="{{route('admin.logout')}}"><i class='bx bx-log-out-circle'></i><span>Logout</span></a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>