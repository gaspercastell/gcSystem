import{Routes,RouterModule} from '@angular/router'

import{AppComponent} from './app.component'
import{LoginComponent} from './_components/login/login.component'

const appRoutes : Routes = [
    {path : '', component:LoginComponent}
]

export const BasePath : String = '/api';
export const Routing = RouterModule.forRoot(appRoutes);